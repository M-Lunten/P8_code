% Box Muller fixed point implementation 
clear all
% Loading the sine angle values
load('sinAngles.mat');
% Segmentation creation
n_seg = 100;
WordLength = 32;
L = 4;
[coeff, coeff_tr, segments] = BM_hybrid_segs(WordLength, L, n_seg);
w_seg = coeff_tr(:,3);
a = sfi(coeff_tr(:,1), 16, 13);
b = sfi(coeff_tr(:,2), 16, 12);

%% GRNG
rng(100)
n = 10^3;
s = zeros(n,1);
c = zeros(n,1);
f = sfi(zeros(n,1), 16, 11);
U_1 = rand(n, 1);
U_2 = [randi([1, 1024], [n, 1]), randi([0,1], [n, 1]), randi([0,1], [n, 1])];
Z = zeros(n, 2);

for i = 1:n
    % Calculation of g(.)
    [s(i), c(i)] = BMF(U_2(i, 1), U_2(i, 2), U_2(i, 3), sinAngles);
    % Calculation of f(.)
    selected_coeff = discretize(U_1(i, 1), segments);
    U_1_fi = ufi(U_1(i), 16, 16);
    if selected_coeff <= 124
        U_tilde = bitshift(U_1_fi, w_seg(selected_coeff));
        tmp = a(selected_coeff) * U_tilde;
        tmp = sfi(tmp, 16, 12);
        tmp = tmp + b(selected_coeff);   
        tmp = sfi(tmp, 16, 11);
        f(i) = tmp;
    else
        U_tilde = bitcmp(U_1_fi);
        U_tilde = bitshift(U_tilde, w_seg(selected_coeff));
        tmp = a(selected_coeff) * U_tilde;
        tmp = sfi(tmp, 16, 12);
        tmp = tmp + b(selected_coeff); 
        tmp = sfi(tmp, 16, 11);
        f(i) = tmp;
    end
    Z(i, 1) = sfi(f(i)*s(i), 16, 11);
    Z(i, 2) = sfi(f(i)*c(i), 16, 11);
end

GRV = [Z(:,1); Z(:,2)];

%%
[yi_f, xi_f] = ksdensity(GRV);
x = [-10:.01:10];
y = normpdf(x,0,1);
load("BM_fp_res_3.mat");

figure(2)
semilogy(xi_f, yi_f)
hold on 
plot(xi, yi)
plot(x, y)
xlim([-4, 4])
legend('Fixed point', 'Floating point', 'Ideal PDF')
hold off
grid on
ylabel('Probability')
xlabel('Standard deviation (\sigma)')
