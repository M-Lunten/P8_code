clc
clear all
close all

SR_count = 31;
Nsamples = 100000;
Seed = 0;
Skips = 15;

S1 = LSFR_skip(Nsamples,SR_count,Seed,Skips);
S2 = LSFR_skip(Nsamples,SR_count,Seed,1);
%LFSR_VHDL_GEN(SR_count,Seed,2);
%[S2 S1];

%
Data1 = zeros(Nsamples-1,2);
Data2 = zeros(Nsamples-1,2);
for i = 1:Nsamples-1
    Data1(i,:) = [S1(i) S1(i+1)];
    Data2(i,:) = [S2(i) S2(i+1)];
end
plot(Data1(:,1),Data1(:,2),'.','LineWidth',0.1)
grid on
xlabel('Sample n','FontSize', 12)
ylabel('Sample n+1','FontSize', 12)
str = sprintf('%d Bit LFSR w. Skips = %d. Number of samples = %d.',SR_count,Skips,Nsamples);
title(str,'FontSize', 12);
hold on
%%
figure()
plot(Data2(:,1),Data2(:,2),'.','LineWidth',0.1)
grid on
xlabel('Sample n')
ylabel('Sample n+1')
str = sprintf('Rand func');
title(str);

%%
figure()
[R1,lag1] = xcorr(S1);
[R2,lag2] = xcorr(Ref);
plot(lag1,R1,lag2,R2)
legend('LFSR','Rand')
