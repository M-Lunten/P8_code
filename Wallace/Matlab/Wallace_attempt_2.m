%
clear all

L = 1024;
K = 4;
R = 1;

rng(1000)
init_N = randn(K, L);
N = init_N;
N_full = [];
A1 = 0.5 * [-1, 1, 1, 1; 1, -1, 1, 1; -1, -1, 1, -1; -1, -1, -1, 1];
A2 = 0.5 * [1, -1, -1, -1; -1, 1, -1, -1; 1, 1, -1, 1; 1, 1, 1, -1];

for i = 1:R
    for j = 1:L
        x = N(:,j);
        if rand(1) < 0.5
            x_trans = A1*x;
        else
            x_trans = A2*x;
        end
        N(:,j) = x_trans;
    end
    N_full = [N_full; reshape(N, [L*K, 1])];
end


init_N = reshape(init_N, [L*K, 1]);

[fi, xi] = ksdensity(init_N);
[fi1, xi1] = ksdensity(N_full);

plot(xi, fi);
hold on
plot(xi1, fi1);
hold off
