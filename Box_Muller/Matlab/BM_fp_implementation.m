% Box Muller floating point implementation
clear all
n = 100;

% Segmentation creation
n_seg = 100;
WordLength = 32;
L = 4;
[coeff, coeff_tr, segs] = BM_hybrid_segs(WordLength, L, n_seg);


s = zeros(n,1);
c = zeros(n,1);
U = rand(n, 2);
for i = 1:n
    [s(i), c(i)] = boxMullerAngle(U(i, 2)*(180/pi));
    
end

plot(U(:,2), s, 'o')
hold on 
plot(U(:,2), c, 'o')