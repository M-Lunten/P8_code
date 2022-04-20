% BM hybrid segmentation, evalutation of different amount of linear
% subsegment (4, 8, 16)
clear all

n = 1000;
n_seg = 2;
WordLength = 32;
w = WordLength - 1;

%% L = 16
L = 16;
[coeffs, coeffs_tr, segments] = BM_hybrid_segs(WordLength, L, n_seg);

U_16 = zeros((length(segments)-1)*n,1);
for i = 1:length(segments)-1
    U_16((i-1)*n+1:(i-1)*n+n, 1) = linspace(segments(i), segments(i+1), n);
end
f_16 = sqrt(-2*log(U_16));

selected_coeff = discretize(U_16, segments);
f_approx_16 = coeffs(selected_coeff, 1).*U_16 + coeffs(selected_coeff, 2);
%% L = 8
L = 8;
[coeffs, coeffs_tr, segments] = BM_hybrid_segs(WordLength, L, n_seg);

U_8 = zeros((length(segments)-1)*n,1);
for i = 1:length(segments)-1
    U_8((i-1)*n+1:(i-1)*n+n, 1) = linspace(segments(i), segments(i+1), n);
end
f_8 = sqrt(-2*log(U_8));

selected_coeff = discretize(U_8, segments);
f_approx_8 = coeffs(selected_coeff, 1).*U_8 + coeffs(selected_coeff, 2);

%% L = 4
L = 4;
[coeffs, coeffs_tr, segments] = BM_hybrid_segs(WordLength, L, n_seg);

U_4 = zeros((length(segments)-1)*n,1);
for i = 1:length(segments)-1
    U_4((i-1)*n+1:(i-1)*n+n, 1) = linspace(segments(i), segments(i+1), n);
end
f_4 = sqrt(-2*log(U_4));

selected_coeff = discretize(U_4, segments);
f_approx_4 = coeffs(selected_coeff, 1).*U_4 + coeffs(selected_coeff, 2);

%% Computation of absolute mean error and maximum error and figures
me_4 = abs(f_approx_4-f_4);
me_8 = abs(f_approx_8-f_8);
me_16 = abs(f_approx_16-f_16);

max_me_4 = max(me_4);
max_me_8 = max(me_8);
max_me_16 = max(me_16);

mean_me_4 = mean(me_4);
mean_me_8 = mean(me_8);
mean_me_16 = mean(me_16);

figure(1)
plot(U_4, me_4)
hold on
plot(U_8, me_8)
plot(U_16, me_16)
yline(2^(-11))
grid on
xlabel('U_1')
ylabel('Approximation Error')
title('1-norm for different number of subsegments')
legend('L = 4', 'L = 8', 'L = 16')
hold off

figure(2)
plot(U_4, f_4)
hold on
plot(U_4, f_approx_4)
grid on
hold off


