% Wallace floating point implementation
clear all
rng(10)

% K*L matrix is used
L = 256;
K = 4;
R = 1;
num_ite = 1000;

% Init pool creation, the sum of squares should be equal to L*K
init_N = randn(K, L);
init_soq = sum(sum(init_N.^2));
adjustment = (L*K)/init_soq;
init_N = init_N*sqrt(adjustment);
sum(sum(init_N.^2))

[out, soq_corr] = wallace(init_N, R, num_ite, 2, 0);

%% Gaussian Distribution figure
[w_f, w_x] = ksdensity(out);
[init_f, init_x] = ksdensity(reshape(init_N, [K*L, 1]));
x = [-6:.01:6];
y = normpdf(x,0,1);

figure(1)
semilogy(x, y);
hold on
plot(w_x, w_f);
hold off
grid on
xlabel('x')
ylabel('Probability')
title('PDF for the wallace algorithm on a log scale')
legend('Ideal Gaussian', 'Wallace GRNG')

figure(4)
plot(x, y);
hold on
plot(w_x, w_f);
hold off
grid on
xlim([-4, 4])
xlabel('x')
ylabel('Probability')
title('PDF for the wallace algorithm on a linear scale')
legend('Ideal Gaussian', 'Wallace GRNG')
%% Sum of squares figure
[corr_f, corr_x] = ksdensity(soq_corr);
x_chi = L*K*0.5:0.2:L*K*1.5;
y_chi = chi2pdf(x_chi,L*K);

figure(2)
plot(x_chi, y_chi)
hold on
plot(corr_x, corr_f)
hold off
grid on
legend('\chi^2 distribution', 'sum of squares');
xlabel('x')
ylabel('Probability')


%% Autocorrelation figures
[r, lags] = xcorr(out, 'normalized');

figure(3)
plot(lags, r)
title('Autocorrelation for Wallace')
ylabel('ACF')
xlabel('Lags')


