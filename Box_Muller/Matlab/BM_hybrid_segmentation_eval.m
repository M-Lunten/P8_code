%Calculation of error by the segmentation
clear all

WordLength = 32;
w = WordLength - 1;
L = 4;
n = 1000;

[coeffs, coeffs_tr, segments] = BM_hybrid_segs(WordLength, L, 10000);

U = rand(n, 1);
f = sqrt(-2*log(U));

selected_coeff = discretize(U, segments);

f_approx = coeffs(selected_coeff).*U + coeffs(selected_coeff, 2);
f_approx_tr = zeros(length(U), 1);

for i = 1:length(U)
    if U(i) < 0.5
        f_approx_tr(i) = coeffs_tr(selected_coeff(i), 1)...
            * 2^(coeffs_tr(selected_coeff(i), 3))*U(i)... 
            + coeffs_tr(selected_coeff(i), 2);
    else
        f_approx_tr(i) = coeffs_tr(selected_coeff(i), 1)...
            * 2^(coeffs_tr(selected_coeff(i), 3))*(1-U(i))... 
            + coeffs_tr(selected_coeff(i), 2);
    end
end

%% Evaluation of the segments, both truncated and non-truncated
mse = abs(f_approx-f);
mse_tr = abs(f_approx_tr-f);

[U_mse, index] = sort(U);
mse = mse(index);
mse_tr = mse_tr(index);
mean(mse)
mean(mse_tr)

figure(1)
plot(sort(U, 'descend'), sort(f, 'ascend'))
hold on
plot(U, f_approx, 'o')
plot(U, f_approx_tr, 'o')
hold off

figure(2)
plot(U_mse, mse)
hold on
plot(U_mse, mse_tr)
hold off

