clc
clear all
close all

Nsamples = 10;
SR_count = 3;
Seed = 0;
Skips = 1;

S = LSFR_skip(Nsamples,SR_count,Seed,Skips);
LFSR_VHDL_GEN(SR_count,Seed,Skips);

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