clc
clear all
close all

K = 8;
N = 2^K; %Number of boxes
const = ufi(1/sqrt(2*pi),16,16);
str = append('Ziggurat Points/Z_',num2str(N),'.mat');
load(str);
load("rectanglesArea.mat");
load("S0areas.mat");
area = ufi(nArea(K),16,16);
S0area = ufi(S0nArea(K),16,16);
%z = ufi(z,16,14);
x = ufi([z(1,1); z(1:end-1,1)],16,14);
y = ufi(z(:,2),16,16);
%% Ziggurat Algorithm
samples = 10000;
out = [];
S = 0;
rng(1);
Seed = 15;
U1 = ufi(LFSR_skip(samples,40,Seed,19)/2^40,16,16);
U2 = ufi(LFSR_skip(samples,40,Seed+3,19)/2^40,16,16); 
%i = LFSR_skip(samples,8,randi([0 2^8-1]),3)+1;
%U1 = rand(samples,1);
%U2 = rand(samples,1);
%i = randi([1 N],samples,1);
i = ceil(LFSR_skip(samples,40,Seed+15,18)/2^(40-K));
%%
for n = 1:samples
    if mod(i(n),2) == 0
        S = sfi(-1,16,15);
    else 
        S = sfi(1,16,15);
    end
    X = sfi(U1(n)*x(i(n)),16,13);
    if i(n) ~= 1 && i(n) ~= N
        if X < x(i(n)+1)
            out(end+1) = sfi(X*S,16,13);
        %elseif y(i(n))-(U2(n)*(y(i(n))-y(i(n)-1))) < const*exp(-X^2/2)
            %out(end+1) = X*S;
        end
    elseif i(n) == N
        if y(i(n))-(U2(n)*(y(i(n))-y(i(n)-1))) < const*expCordic(-X^2/2)
            out(end+1) = sfi(X*S,16,13);
        end
    elseif i(n) == 1
        if U2(n)*area < S0area
            out(end+1) = sfi(X*S,16,13);
        end
    end

end

ksdensity(out)
grid on



%% Generating .mif file
file_name = 'Ziggurat_LUT';
fopen(fullfile('..\VHDL',append(file_name,'.mif')),'wt');
fprintf(fid,'-- Look-up table for the x points in the Ziggurat algorithm\n-- Q-format is Q2.14 unsigned\n');
fprintf(fid,'DEPTH = %d;\t\t\t-- The size of memory in words\n',N);
fprintf(fid,'WIDTH = 16;\t\t\t\t-- The size of data in bits\n');
fprintf(fid,'ADDRESS_RADIX = HEX;\t-- The radix for address values\n');
fprintf(fid,'DATA_RADIX = BIN;\t\t-- The radix for data values\n');
fprintf(fid,'CONTENT\t\t\t\t\t-- Start of (address : data pairs)\n');
fprintf(fid,'BEGIN\n');
for i = 0:255
    fprintf(fid,'%s\t:\t%s;\n',dec2hex(i),bin(x(i+1)));    
end
fprintf(fid,'END;');
fclose(fid);