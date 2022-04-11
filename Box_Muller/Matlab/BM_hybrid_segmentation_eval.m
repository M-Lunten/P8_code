% BM hybrid segmentation, evaluation of the use of linear regression using
% least squares optimization
clear all

n = 1000;
n_seg = 2;
WordLength = 32;
w = WordLength - 1;

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

%% L = 4 optimized
L = 4;
[coeffs, coeffs_tr, segments] = BM_hybrid_segs(WordLength, L, 100);

U_4_op = zeros((length(segments)-1)*n,1);
for i = 1:length(segments)-1
    U_4_op((i-1)*n+1:(i-1)*n+n, 1) = linspace(segments(i), segments(i+1), n);
end
f_4_op = sqrt(-2*log(U_4_op));

selected_coeff = discretize(U_4_op, segments);
f_approx_4_op = coeffs(selected_coeff, 1).*U_4_op + coeffs(selected_coeff, 2);

%% Truncated evaluation
split_p = find(U_4_op == 0.5);
U_1 = U_4_op(1:split_p(1)-1);
U_2 = U_4_op(split_p(1):end);
selected_coeff_1 = discretize(U_1, segments);
selected_coeff_2 = discretize(U_2, segments);

f_approx_4_op_tr_1 = coeffs_tr(selected_coeff_1, 1)...
    .*2.^(coeffs_tr(selected_coeff_1, 3)).*U_1...
    + coeffs_tr(selected_coeff_1, 2);

f_approx_4_op_tr_2 = coeffs_tr(selected_coeff_2, 1)...
    .*2.^(coeffs_tr(selected_coeff_2, 3)).*(1-U_2)...
    + coeffs_tr(selected_coeff_2, 2);

f_approx_4_op_tr = [f_approx_4_op_tr_1; f_approx_4_op_tr_2];
%% Figures
me_4 = abs(f_approx_4-f_4);
me_4_op = abs(f_approx_4_op-f_4_op);
me_4_op_tr = abs(f_approx_4_op_tr-f_4_op);

max_me_4 = max(me_4);
max_me_4_op = max(me_4_op);

mean_me_4 = mean(me_4);
mean_me_4_op = mean(me_4_op);

figure(1)
plot(U_4, me_4)
hold on
plot(U_4_op, me_4_op)
yline(2^(-11))
grid on
xlabel('U_1')
ylabel('Approximation Error')
legend('L = 4', 'L = 4 (optimized)')
hold off

figure(2)
plot(U_4_op, me_4_op)
hold on
plot(U_4_op, me_4_op_tr)
grid on
legend('Non-truncated', 'Truncated')
hold off