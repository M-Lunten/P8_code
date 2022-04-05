% BM hybrid segmentation, evalutation of different amount of linear
% subsegment (4, 8, 16)
clear all

n = 10000;
n_seg = 2;
WordLength = 32;
w = WordLength - 1;

U = linspace(0, 1, n+2)';
U(1) = [];
U(end) = [];
f = sqrt(-2*log(U));

L = 4;
[coeffs, coeffs_tr, segments] = BM_hybrid_segs(WordLength, L, n_seg);
selected_coeff = discretize(U, segments);
f_approx_4 = coeffs(selected_coeff, 1).*U + coeffs(selected_coeff, 2);

L = 8;
[coeffs, coeffs_tr, segments] = BM_hybrid_segs(WordLength, L, n_seg);
selected_coeff = discretize(U, segments);
f_approx_8 = coeffs(selected_coeff, 1).*U + coeffs(selected_coeff, 2);

L = 16;
[coeffs, coeffs_tr, segments] = BM_hybrid_segs(WordLength, L, n_seg);
selected_coeff = discretize(U, segments);
f_approx_16 = coeffs(selected_coeff, 1).*U + coeffs(selected_coeff, 2);

%%
me_4 = abs(f_approx_4-f);
me_8 = abs(f_approx_8-f);
me_16 = abs(f_approx_16-f);

max_me_4 = max(me_4);
max_me_8 = max(me_8);
max_me_16 = max(me_16);

mean_me_4 = mean(me_4);
mean_me_8 = mean(me_8);
mean_me_16 = mean(me_16);

plot(U, me_4)
hold on
plot(U, me_8)
plot(U, me_16)
grid on
xlabel('U_1')
ylabel('Approximation Error')
legend('L = 4', 'L = 8', 'L = 16')
hold off




