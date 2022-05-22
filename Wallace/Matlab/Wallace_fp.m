% Wallace algorithm for generating Gaussian random numbers given an initial
% pool of Gaussian random numbers
% This is a fixed point version
clear all
rng(10)

% K*L matrix is used
L = 256;
K = 4;
R = 1;
num_ite = 100;

% Init pool creation, the sum of squares should be equal to L*K
init_N = randn(K, L);
init_soq = sum(sum(init_N.^2));
adjustment = (L*K)/init_soq;
init_N = init_N*sqrt(adjustment);
sum(sum(init_N.^2))


[out, soq_corr] = wallace(init_N, R, num_ite, 2, 0);
[out_fp, soq_corr_fp] = fp_wallace(init_N, R, num_ite, 2, 0);

%% Gaussian Distribution figure
[w_f, w_x] = ksdensity(out);
[w_f_fp, w_x_fp] = ksdensity(out_fp);
x = [-6:.01:6];
y = normpdf(x,0,1);

figure(1)
plot(x, y);
hold on
plot(w_x, w_f);
plot(w_x_fp, w_f_fp);
xlim([-4, 4])
hold off
title('PDF comparison between fixed/floating point on linear scale')
xlabel('x')
ylabel('Probability')
grid on
legend('Ideal Gaussian', 'Floating Point', 'Fixed Point')

figure(2)
semilogy(x, y);
hold on
plot(w_x, w_f);
plot(w_x_fp, w_f_fp);
hold off
title('PDF comparison between fixed/floating point on log scale')
xlabel('x')
ylabel('Probability')
grid on
legend('Ideal Gaussian', 'Floating Point', 'Fixed Point')

%% Sum of squares figure
[corr_f_fp, corr_x_fp] = ksdensity(soq_corr_fp);
[corr_f, corr_x] = ksdensity(soq_corr);
x_chi = L*K*0.5:0.2:L*K*1.5;
y_chi = chi2pdf(x_chi,L*K);
x_diff = corr_x_fp-corr_x;
y_diff = abs(corr_f_fp-corr_f);
figure(2)
plot(corr_x, y_diff)
hold on
%plot(corr_x, corr_f)
%plot(corr_x_fp, corr_f_fp)
hold off
grid on
title('Approximation error between floating/fixed point')
xlabel('x')
ylabel('Probability')

%% Autocorrelation figures
[r_fp, lags_fp] = xcorr(out_fp, 'normalized');
[r, lags] = xcorr(out, 'normalized');

figure(3)
plot(lags, r)
title('Autocorrelation for floating point Wallace')
ylabel('ACF')
xlabel('Lags')
figure(4)
plot(lags_fp, r_fp)
title('Autocorrelation for fixed point Wallace')
ylabel('ACF')
xlabel('Lags')