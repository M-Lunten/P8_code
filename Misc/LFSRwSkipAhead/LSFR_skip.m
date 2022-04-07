function [samples,A] = LSFR_skip(sampleN,n,Seed,skips)
FB = readcell('LFSR Feedback Table.xlsx');

Seedint = int2bit(uint64(Seed),n)';
coef = str2num(cell2mat(FB(n-2,2)));

f = zeros(1,n);
for i = 1:length(coef)
    f(coef(i)) = 1;
end
I = eye(n-1);
I = [I zeros(n-1,1)];
S = [f;I];

temp = zeros(1,n);

A = S^skips;
if any(A > 1)
    error('(A) must only contain 1 and 0. \nTry skips lower than %d. \n',skips);
end
K = zeros(1,n);
for i = 1:n
    K(i) = length(find(A(:,i) == 1));
end
file_name = strcat('LFSR_',num2str(n));
fid1 = fopen(fullfile('VHDL',append(file_name,'.vhd')),'wt');
fid2 = fopen(fullfile('VHDL',append(file_name,'.qpf')),'wt');
fclose(fid2);
fprintf(fid1,'--Linear Feedback Shift Register with %d skip-ahead.\n',skips);
% VHDL Port Setup
fprintf(fid1,'Library ieee;\nUse ieee.std_logic_1164.all;\n');
fprintf(fid1,'entity %s is\n',file_name);
fprintf(fid1,'\t port (\n\t\tCLK: in std_logic;\n');
fprintf(fid1,'\t\tOUTPUT: out std_logic_vector(%d downto 0)\n',n-1);
fprintf(fid1,'\t);\n');
fprintf(fid1,'end %s;\n\n',file_name);
%Architecture Behavioral
fprintf(fid1,'architecture Behavioral of %s is\n',file_name);
fprintf(fid1,'\tsignal shift_register : std_logic_vector(%d downto 0) := "%s";\n',n-1,dec2bin(Seed,n));
fprintf(fid1,'begin\n\n');
fprintf(fid1,'-- ShiftRegister\n');
fprintf(fid1,'\tprocess(CLK)\n\tbegin\n');
fprintf(fid1,'\t\tif (CLK\''event and CLK  = ''1'') then\n');
samples = zeros(sampleN,1);
for N = 1:sampleN
    for i = 1:n
        res = false;
        C = find(A(:,i));
        if K(i) == 1
            temp(i) = Seedint(C); % If in- and output are directly connected
            if N == 1
                fprintf(fid1,'\t\t\tshift_register(%d) <= shift_register(%d);\n',i-1,C-1);
            end
        else
            if N == 1
                fprintf(fid1,'\t\t\tshift_register(%d) <= ',i-1);
            end
            for L = 1:K(i)
                res = xor(Seedint(C(L)),res);
                if N == 1
                    if L == 1
                        fprintf(fid1,'not(shift_register(%d)',C(L)-1);
                    else
                        fprintf(fid1,' xor shift_register(%d)',C(L)-1);
                    end
                end
            end
            if N == 1
                fprintf(fid1,');\n');
            end
            temp(i) = ~res;
        end
    end
    Seedint = temp;
    samples(N,:) = bit2int(Seedint',n);
end
fprintf(fid1,'\t\tend if;\n');
fprintf(fid1,'\tend process;\n');
fprintf(fid1,'\tOUTPUT <= shift_register;\n');
fprintf(fid1,'end Behavioral;');
fclose(fid1);

% Generate Testbench file
file_name1 = strcat('TestBench_LFSR_',num2str(n));
TBench =  fopen(fullfile('VHDL',append(file_name1,'.vhd')),'wt');
fprintf(TBench,'LIBRARY ieee;\nUSE ieee.std_logic_1164.all;\n\n');
fprintf(TBench,'ENTITY %s IS\nEND %s;\n',file_name1,file_name1);
fprintf(TBench,'ARCHITECTURE %s_arch OF %s IS\n',file_name,file_name1);
fprintf(TBench,'-- constants\n-- signals\n');
fprintf(TBench,'signal CLK: std_logic;\n');
fprintf(TBench,'signal OUTPUT: std_logic_vector(%d downto 0);\n',n-1);
fprintf(TBench,'component %s\n\tport(\n',file_name);
fprintf(TBench,'\tCLK: in std_logic;\n\tOUTPUT: out std_logic_vector(%d downto 0)\n\t);\n',n-1);
fprintf(TBench,'end component;\n');
fprintf(TBench,'begin\n');
fprintf(TBench,'\ti1 : %s\n',file_name);
fprintf(TBench,'\tport map(\n');
fprintf(TBench,'-- list connections between master ports and signals\n');
fprintf(TBench,'\tCLK => CLK,\n\tOUTPUT => OUTPUT\n\t);\n\n');
fprintf(TBench,'-- CLK\n');
fprintf(TBench,'t_prcs_CLK: PROCESS\n');
fprintf(TBench,'begin\nloop\n\tCLK <= ''0'';\n\twait for 10000 ps;\n');
fprintf(TBench,'\tCLK <= ''1'';\n\twait for 10000 ps;\n');
fprintf(TBench,'\tif (now >= 1000000 ps) then wait; end if;\n');
fprintf(TBench,'end loop;\nend process t_prcs_CLK;\nend %s_arch;',file_name);
end