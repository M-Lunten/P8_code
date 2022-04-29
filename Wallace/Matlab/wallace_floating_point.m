% Wallace floating point implementation
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

%% Gaussian Distribution figure
[w_f, w_x] = ksdensity(out);
[init_f, init_x] = ksdensity(reshape(init_N, [K*L, 1]));
x = [-6:.01:6];
y = normpdf(x,0,1);

figure(1)
plot(x, y);
hold on
plot(init_x, init_f);
plot(w_x, w_f);
hold off
grid on
legend('Ideal Gaussian', 'Initial pool', 'Wallace GRNG')

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
xlabel('Lags')


