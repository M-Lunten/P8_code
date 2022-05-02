%Wallace test of poolsize, num of As, R and mask
%Every test creates 102300 numbers or as close as possible.
clear all

%% Num of As test.
rng(10)

% K*L matrix is used
L = 256;
K = 4;
R = 1;
num_ite = 1000;

% Init pool creation, the sum of squares should be equal to L*K
init_N = randn(K, L);
init_N = pool_normalization(init_N);

[out_1, ~] = wallace(init_N, R, num_ite, 1, 0);
[out_2, ~] = wallace(init_N, R, num_ite, 2, 0);
[out_3, ~] = wallace(init_N, R, num_ite, 3, 0);
[out_4, ~] = wallace(init_N, R, num_ite, 4, 0);

[f_1, x_1] = ksdensity(out_1);
[f_2, x_2] = ksdensity(out_2);
[f_3, x_3] = ksdensity(out_3);
[f_4, x_4] = ksdensity(out_4);
x = [-6:.01:6];
y = normpdf(x,0,1);

figure(1)
semilogy(x, y)
hold on
plot(x_1, f_1)
plot(x_2, f_2)
plot(x_3, f_3)
plot(x_4, f_4)
hold off
grid on
legend('Ideal Gaussian', '1 A', '2 A', '3 A', '4 A')
ylabel('Probability')
xlabel('x')
title('Test of amount of transformation matrices')

[r_1, lags_1] = xcorr(out_1, 'normalized');
[r_2, lags_2] = xcorr(out_2, 'normalized');
[r_3, lags_3] = xcorr(out_3, 'normalized');
[r_4, lags_4] = xcorr(out_4, 'normalized');

figure(2)
plot(lags_1, r_1)
title('1')
xlabel('Lag')
ylabel('ACF')
xlim([-10000, 10000])
figure()
plot(lags_2, r_2)
title('2')
xlabel('Lag')
ylabel('ACF')
xlim([-10000, 10000])
figure()
plot(lags_3, r_3)
title('3')
xlabel('Lag')
ylabel('ACF')
xlim([-10000, 10000])
figure()
plot(lags_4, r_4)
title('4')
xlabel('Lag')
ylabel('ACF')
xlim([-10000, 10000])

%% Matrix 4 wallace
rng(10)

% K*L matrix is used
L = 256;
K = 4;
R = 1;
num_ite = 1000;

% Init pool creation, the sum of squares should be equal to L*K
init_N = randn(K, L);
init_N = pool_normalization(init_N);

[out_1, ~] = wallace(init_N, R, num_ite, 1, 0);

[r_1, lags_1] = xcorr(out_1, 'normalized');
figure(2)
plot(lags_1, r_1)
title('1')
xlabel('Lag')
ylabel('ACF')
xlim([-10000, 10000])
%% Pool size testing
%rng(10)

% constants
K = 4;
R = 1;

% Total out size is (L*K-1)*num_ite
L = 256;
num_ite = 100;
init_N = randn(K, L);
init_N = pool_normalization(init_N);

[out_1, ~] = wallace(init_N, R, num_ite, 2, 0);

L = 512;
num_ite = ceil(102300/(L*K-1));
init_N = randn(K, L);
init_N = pool_normalization(init_N);

[out_2, ~] = wallace(init_N, R, num_ite, 2, 0);

L = 1024;
num_ite = ceil(102300/(L*K-1));
init_N = randn(K, L);
init_N = pool_normalization(init_N);

[out_3, ~] = wallace(init_N, R, num_ite, 2, 0);

L = 2048;
num_ite = ceil(102300/(L*K-1));
init_N = randn(K, L);
init_N = pool_normalization(init_N);

[out_4, ~] = wallace(init_N, R, num_ite, 2, 0);

[f_1, x_1] = ksdensity(out_1);
[f_2, x_2] = ksdensity(out_2);
[f_3, x_3] = ksdensity(out_3);
[f_4, x_4] = ksdensity(out_4);
x = [-6:.01:6];
y = normpdf(x,0,1);

figure(3)
semilogy(x, y)
hold on
plot(x_1, f_1)
plot(x_2, f_2)
plot(x_3, f_3)
plot(x_4, f_4)
hold off
grid on
legend('Ideal Gaussian', 'L=256', 'L=512', 'L=1024', 'L=2048')
ylabel('Probability')
xlabel('x')
title('Test of pool size')

[r_1, lags_1] = xcorr(out_1, 'normalized');
[r_2, lags_2] = xcorr(out_2, 'normalized');
[r_3, lags_3] = xcorr(out_3, 'normalized');
[r_4, lags_4] = xcorr(out_4, 'normalized');

figure(4)
plot(lags_1, r_1)
title('L=256')
xlabel('Lag')
ylabel('ACF')
%xlim([-10000, 10000])
figure()
plot(lags_2, r_2)
title('L=512')
xlabel('Lag')
ylabel('ACF')
%xlim([-10000, 10000])
figure()
plot(lags_3, r_3)
title('L=1024')
xlabel('Lag')
ylabel('ACF')
%xlim([-10000, 10000])
figure()
ylabel('ACF')
xlabel('Lag')
plot(lags_4, r_4)
title('L=2048')
%xlim([-10000, 10000])

%% Test of pass amount
rng(10)

% K*L matrix is used
L = 256;
K = 4;
R = 1;
num_ite = 100;

% Init pool creation, the sum of squares should be equal to L*K
init_N = randn(K, L);
init_N = pool_normalization(init_N);

[out_1, ~] = wallace(init_N, R, num_ite, 2, 0);
R = 2;
[out_2, ~] = wallace(init_N, R, num_ite, 2, 0);
R = 4;
[out_3, ~] = wallace(init_N, R, num_ite, 2, 0);
R = 8;
[out_4, ~] = wallace(init_N, R, num_ite, 2, 0);

[f_1, x_1] = ksdensity(out_1);
[f_2, x_2] = ksdensity(out_2);
[f_3, x_3] = ksdensity(out_3);
[f_4, x_4] = ksdensity(out_4);
x = [-6:.01:6];
y = normpdf(x,0,1);

figure(5)
semilogy(x, y)
hold on
plot(x_1, f_1)
plot(x_2, f_2)
plot(x_3, f_3)
plot(x_4, f_4)
hold off
grid on
legend('Ideal Gaussian', '1 pass', '2 passes', '4 passes', '8 passes')
ylabel('Probability')
xlabel('x')
title('Test of pass effect')

[r_1, lags_1] = xcorr(out_1, 'normalized');
[r_2, lags_2] = xcorr(out_2, 'normalized');
[r_3, lags_3] = xcorr(out_3, 'normalized');
[r_4, lags_4] = xcorr(out_4, 'normalized');

figure()
plot(lags_1, r_1)
title('1')
ylabel('ACF')
xlabel('Lag')
xlim([-10000, 10000])
figure()
plot(lags_2, r_2)
ylabel('ACF')
xlabel('Lag')
title('2')
xlim([-10000, 10000])
figure()
plot(lags_3, r_3)
ylabel('ACF')
xlabel('Lag')
title('3')
xlim([-10000, 10000])
figure()
plot(lags_4, r_4)
ylabel('ACF')
xlabel('Lag')
title('4')
xlim([-10000, 10000])

%% Test of mask
rng(11)

% K*L matrix is used
L = 256;
K = 4;
R = 1;
num_ite = 100;

% Init pool creation, the sum of squares should be equal to L*K
init_N = randn(K, L);
init_N = pool_normalization(init_N);

[out_1, ~] = wallace(init_N, R, num_ite, 2, 0);
[out_2, ~] = wallace(init_N, R, num_ite, 2, 1);


[f_1, x_1] = ksdensity(out_1);
[f_2, x_2] = ksdensity(out_2);
x = [-6:.01:6];
y = normpdf(x,0,1);

figure(7)
semilogy(x, y)
hold on
plot(x_1, f_1)
plot(x_2, f_2)
hold off
grid on
legend('Ideal Gaussian', 'No Mask', 'With Mask')
ylabel('Probability')
xlabel('x')
title('Test of pass effect')

[r_1, lags_1] = xcorr(out_1, 'normalized');
[r_2, lags_2] = xcorr(out_2, 'normalized');

figure()
plot(lags_1, r_1)
ylabel('ACF')
xlabel('Lag')
title('No Mask')
xlim([-10000, 10000])
figure()
plot(lags_2, r_2)
ylabel('ACF')
xlabel('Lag')
title('With Mask')
xlim([-10000, 10000])


%% Test of dong matrices vs wallace
rng(10)

% K*L matrix is used
L = 256;
K = 4;
R = 1;
num_ite = 100;

% Init pool creation, the sum of squares should be equal to L*K
init_N = randn(K, L);
init_N = pool_normalization(init_N);

[out_1, ~] = wallace(init_N, R, num_ite, 2, 0);
[out_2, ~] = wallace_dong(init_N, R, num_ite, 2, 0);


[f_1, x_1] = ksdensity(out_1);
[f_2, x_2] = ksdensity(out_2);
x = [-6:.01:6];
y = normpdf(x,0,1);

figure(7)
semilogy(x, y)
hold on
plot(x_1, f_1)
plot(x_2, f_2)
hold off
grid on
legend('Ideal Gaussian', 'Wallace', 'Dong')
ylabel('Probability')
xlabel('x')
title('Test of different matrices setup')

[r_1, lags_1] = xcorr(out_1, 'normalized');
[r_2, lags_2] = xcorr(out_2, 'normalized');

figure(8)
plot(lags_1, r_1)
ylabel('ACF')
xlabel('Lag')
title('Wallace')
xlim([-10000, 10000])
figure()
plot(lags_2, r_2)
ylabel('ACF')
xlabel('Lag')
title('Dong-U Lee')
xlim([-10000, 10000])

%% Test of 2 pools vs 1 pool
rng(10)

% K*L matrix is used
L = 256;
K = 4;
R = 1;
num_ite = 100;

% Init pool creation, the sum of squares should be equal to L*K
init_N = randn(K, L);
init_N = pool_normalization(init_N);

[out_1, ~] = wallace(init_N, R, num_ite, 2, 0);
[out_2, ~] = wallace_2_pools(init_N, R, num_ite, 2);

[f_1, x_1] = ksdensity(out_1);
[f_2, x_2] = ksdensity(out_2);
x = [-6:.01:6];
y = normpdf(x,0,1);

figure(7)
plot(x, y)
hold on
plot(x_1, f_1)
plot(x_2, f_2)
hold off
grid on
legend('Ideal Gaussian', '1 pool', '2 pools')
ylabel('Probability')
xlabel('x')
title('Test of 1 collective pool vs 2 separated pools')

[r_1, lags_1] = xcorr(out_1, 'normalized');
[r_2, lags_2] = xcorr(out_2, 'normalized');

figure(8)
plot(lags_1, r_1)
ylabel('ACF')
xlabel('Lag')
title('1 pool')
xlim([-10000, 10000])
figure()
plot(lags_2, r_2)
ylabel('ACF')
xlabel('Lag')
title('2 pools')
xlim([-10000, 10000])