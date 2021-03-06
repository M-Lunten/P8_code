clc
clear all
close all

gen_mif = 0;
K = 8;
N = 2^K; %Number of boxes
const = sfi(1/sqrt(2*pi),16,13);
str = append('Ziggurat Points/Z_',num2str(N),'.mat');
load(str);
load("rectanglesArea.mat");
load("S0areas.mat");
area = sfi(nArea(K),16,16);
S0area = sfi(S0nArea(K),16,16);
%z = ufi(z,16,14);
x = sfi([z(1,1); z(1:end-1,1)],16,13);
x1 = [z(1,1); z(1:end-1,1)];
y = sfi(z(:,2),16,16);
y1 = z(:,2);
%% Ziggurat Algorithm
v_res = readmatrix('..\VHDL\validate_results.csv')';
acc = zeros(3,length(v_res)-1);
acc(3,:) = v_res(2:end);
samples = length(v_res)-1;
out = [];
S = 0;
%rng(1);
Seed = 0;
D1 = 0;
D2 = zeros(1,2);
D3 = 0;
D4 = zeros(1,2);
D5 = zeros(1,2);
D6 = zeros(1,2);
D7 = 0;
D8 = 0;

[I0,B0] = LFSR_skip(samples,33,Seed,13);
U0bin = bit2int(B0(:,[33-15:33-0])',16)';
U1bin = bit2int(B0(:,[33-31:33-16])',16)';
U0 = bit2int(B0(:,[33-15:33-0])',16)'./2^16;
U1 = bit2int(B0(:,[33-31:33-16])',16)'./2^16;
%i = LFSR_skip(samples,8,randi([0 2^8-1]),3)+1;
%U1 = rand(samples,1);
%U2 = rand(samples,1);
%i = randi([1 N],samples,1);
iVHDSim = bit2int(B0(:,[33-(16+K-1):33-16])',K)';
i = bit2int(B0(:,[33-(16+K-1):33-16])',K)'+1;

acc(1,:) = iVHDSim;

%%
for n = 1:samples
    if B0(n,31) == 1
        S = sfi(-1,16,13);
    else 
        S = sfi(1,16,13);
    end
    X = sfi(U0(n)*x(i(n)),16,13);
    X1 = U0(n)*x1(i(n));
    if i(n) ~= 1 && i(n) ~= N
        D1 = D1+1;
        if X < x(i(n)+1)
            out(end+1) = sfi(X*S,16,13);
            acc(2,n) = 1;
            D2(1,1) = D2(1,1)+1;    
        %elseif y(i(n))-(U1(n)*(y(i(n))-y(i(n)-1))) < const*exp(-X1^2/2)
            %out(end+1) = sfi(X*S,16,13);
            %D8 = D8 + 1;

        else
            D2(1,2) = D2(1,2)+1;
        end
    elseif i(n) == 1
        D3 = D3 + 1;
        if U1(n)*area < S0area
        %if U1(n) < area
            out(end+1) = sfi(X*S,16,13);
            acc(2,n) = 1;
            D4(1,1) = D4(1,1) + 1;
        else
            D4(1,2) = D4(1,2) + 1;
        end
    else
        D7 = D7 + 1;
        if y(i(n))-(U1(n)*(y(i(n))-y(i(n)-1))) < sfi(-0.1995,16,15)*X^2 + sfi(0.3989,16,15)
            out(end+1) = sfi(X*S,16,13);
            acc(2,n) = 1;
            D5(1,1) = D5(1,1) + 1;
        else
            D5(1,2) = D5(1,2) + 1;
        end
    end

end

ksdensity(out)
grid on



%% Generating .mif file
if gen_mif == 1
    file_name = 'Ziggurat_LUT';
    fid = fopen(fullfile('..\VHDL',append(file_name,'.mif')),'wt');
    fprintf(fid,'-- Look-up table for the x points in the Ziggurat algorithm\n-- Q-format is Q3.13 signed\n');
    fprintf(fid,'DEPTH = %d;\t\t\t-- The size of memory in words\n',N);
    fprintf(fid,'WIDTH = 16;\t\t\t\t-- The size of data in bits\n');
    fprintf(fid,'ADDRESS_RADIX = DEC;\t-- The radix for address values\n');
    fprintf(fid,'DATA_RADIX = BIN;\t\t-- The radix for data values\n');
    fprintf(fid,'CONTENT\t\t\t\t\t-- Start of (address : data pairs)\n');
    fprintf(fid,'BEGIN\n');
    for i = 0:N-1
        fprintf(fid,'%d\t:\t%s;\n',i,bin(x(i+1)));    
    end
    fprintf(fid,'END;');
    fclose(fid);
end