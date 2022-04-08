% Box Muller floating point implementation
clear all

% Segmentation creation
n_seg = 100;
WordLength = 32;
L = 4;
[coeff, coeff_tr, segments] = BM_hybrid_segs(WordLength, L, n_seg);

%% GRNG
rng(100)
n = 10^3;
s = zeros(n,1);
c = zeros(n,1);
f = zeros(n,1);
U_1 = rand(n, 1);
U_2 = [randi([1, 1024], [n, 1]), randi([0,1], [n, 1]), randi([0,1], [n, 1])];
Z = zeros(n, 2);
for i = 1:n
    [s(i), c(i)] = boxMullerAngle(U_2(i, 1), U_2(i, 2), U_2(i, 3));

    % Calculation of f(.)
    selected_coeff = discretize(U_1(i, 1), segments);
    if selected_coeff <= 124
        f(i) = coeff_tr(selected_coeff, 1)...
            .*2.^(coeff_tr(selected_coeff, 3)).*U_1(i, 1)...
            + coeff_tr(selected_coeff, 2);
    else
        f(i) = coeff_tr(selected_coeff, 1)...
            .*2.^(coeff_tr(selected_coeff, 3)).*(1-U_1(i, 1))...
            + coeff_tr(selected_coeff, 2);
    end
    Z(i, 1) = f(i)*s(i);
    Z(i, 2) = f(i)*c(i);
end

GRV = [Z(:,1); Z(:,2)];
[yi, xi] = ksdensity(GRV);
x = [-10:.01:10];
y = normpdf(x,0,1);

figure(1)
semilogy(xi, yi)
hold on 
plot(x, y)
xlim([-8, 8])
hold off
