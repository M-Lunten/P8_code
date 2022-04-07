% Box Muller fixed point implementation 
clear all

% Segmentation creation
n_seg = 100;
WordLength = 32;
L = 4;
[coeff, coeff_tr, segments] = BM_hybrid_segs(WordLength, L, n_seg);
w_seg = coeff_tr(:,3);
a = sfi(coeff_tr(:,1), 16, 14);
b = sfi(coeff_tr(:,2), 16, 12);

%% GRNG
rng(100)
n = 10^3;
s = zeros(n,1);
c = zeros(n,1);
f = sfi(zeros(n,1), 16, 11);
U_1 = rand(n, 1);
U_2 = ufi(rand(n, 1), 12, 12);
Z = zeros(n, 2);
for i = 1:n
    [s(i), c(i)] = BMF(U_2(i));
    % Calculation of f(.)
    selected_coeff = discretize(U_1(i, 1), segments);
    U_1_fi = ufi(U_1(i), 32, 32);
    if selected_coeff <= 124
        U_tilde = bitshift(U_1_fi, w_seg(selected_coeff));
        tmp = a(selected_coeff) * U_tilde;
        tmp = sfi(tmp, 16, 11);
        tmp = tmp + b(selected_coeff);   
        tmp = sfi(tmp, 16, 11);
        f(i) = tmp;
    else
        U_tilde = bitcmp(U_1_fi);
        U_tilde = bitshift(U_tilde, w_seg(selected_coeff));
        tmp = a(selected_coeff) * U_tilde;
        tmp = sfi(tmp, 16, 11);
        tmp = tmp + b(selected_coeff); 
        tmp = sfi(tmp, 16, 11);
        f(i) = tmp;
    end
    Z(i, 1) = f(i)*s(i);
    Z(i, 2) = f(i)*c(i);
end

GRV = [Z(:,1); Z(:,2)];
[yi_f, xi_f] = ksdensity(GRV);
x = [-10:.01:10];
y = normpdf(x,0,1);
load("BM_fp_res.mat");

figure(1)
semilogy(xi_f, yi_f)
hold on 
plot(xi, yi)
plot(x, y)
xlim([-8, 8])
hold off

