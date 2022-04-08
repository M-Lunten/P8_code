clc
clear all
close all

SR_count = 3;
Nsamples = 2^SR_count-1;
Seed = 0;
Skips = 1;

S1 = LSFR_skip(Nsamples,SR_count,Seed,Skips);
S2 = LSFR_skip(Nsamples,SR_count,Seed,2);
LFSR_VHDL_GEN(SR_count,Seed,2);
[S1 S2]

%%
Data = zeros(Nsamples-1,2);
for i = 1:Nsamples-1
    Data(i,:) = [S(i) S(i+1)];
end
plot(Data(:,1),Data(:,2),'.','LineWidth',0.1)
grid on
xlabel('Sample n')
ylabel('Sample n+1')
str = sprintf('%d Bit LFSR w. %d Skips',SR_count,Skips);
title(str);