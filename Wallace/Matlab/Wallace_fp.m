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
semilogy(x, y);
hold on
plot(w_x, w_f);
plot(w_x_fp, w_f_fp);
hold off
grid on
legend('Ideal Gaussian', 'Floating Point', 'Fixed Point')
