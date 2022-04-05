%Calculation of error by the segmentation
clear all

WordLength = 32;
w = WordLength - 1;
L = 4;

[coeffs, segments] = BM_hybrid_segs(WordLength, L);
%% Evaluation
n = 1000;
U = rand(n, 1);
f = sqrt(-2*log(U));

%Truncation of variables into 16 bits
half_p = length(coeffs)/2;
coeffs_tr = zeros(size(coeffs));
coeffs_tr(1:half_p, 1) = 2^(-w)*coeffs(1:half_p, 1);
coeffs_tr(1:half_p, 2) = coeffs(1:half_p, 2);
coeffs_tr(1+half_p:end, 1) = -2^(-w)*coeffs(1+half_p:end, 1);
coeffs_tr(1+half_p:end, 2) = coeffs(1+half_p:end, 2) + coeffs(1+half_p:end, 1);
U_tr = 2^(w) * U(U < 0.5);
U_tr = [U_tr; 2^w * (1-U(U > 0.5))];

selected_coeff = discretize(U, segments);
selected_coeff_tr = discretize(U_tr, segments);

f_approx = coeffs(selected_coeff).*U + coeffs(selected_coeff, 2);
f_approx_tr = coeffs_tr(selected_coeff_tr).*U_tr + coeffs_tr(selected_coeff_tr, 2);

mse = (f_approx-f);
mse_tr = (f_approx_tr-f);
[U_mse, index] = sort(U);
mse = mse(index);
mean(mse)
%%
figure(1)
plot(U, f, 'o')
hold on
plot(U, f_approx, 'o')
hold off

%%
figure(2)
plot(U_mse, mse)
    
%%

