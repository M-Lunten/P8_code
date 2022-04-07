function [coefficients, coefficients_tr, segments] = BM_hybrid_segs_op(WordLength, L, n_p)
%BM_hybrid_segs_op: creates the optimized hybrid segmentation of the
%function sqrt(-2*ln(U1))
w = 2*(WordLength - 1);

r0 = zeros((WordLength-1)*L, 1);
r1 = ones((WordLength-1)*L + 1, 1);
%Creation of segments
n = 1;
for i = 1:L:w*(L/2)
    r0(i, 1) = 2^(-n);
    r0_end = 2^(-(n+1));
    r1(i, 1) = 1-2^(-n);
    r1_end = 1-2^(-(n+1));
    if n == WordLength-1
        r1_end = 1;
    end
    step_size_0 = abs(r0(i,1) - r0_end)/L;
    step_size_1 = abs(r1(i,1) - r1_end)/L;
    for j = 1:L-1
        r0(i+j) = r0(i) - j*step_size_0;
        r1(i + j) = r1(i) + j*step_size_1;
    end
    n = n + 1;
end
r0(end+1) = r0_end; 

coeffs_r0 = zeros((WordLength-1)*L,2);
coeffs_r1 = zeros((WordLength-1)*L,2);

for i = 1:length(r0)-1
    x_points = logspace(log10(r0(i)), log10(r0(i+1)), n_p);
    y_points = sqrt(-2.*log(x_points));
    coeffs_r0(i,:) = polyfit(x_points, y_points, 1);
    x_points = linspace(10^(r1(i)), 10^(r1(i+1)), n_p);
    x_points = log10(x_points);
    y_points = sqrt(-2.*log(x_points));
    coeffs_r1(i,:) = polyfit(x_points, y_points, 1);
end

coefficients = [flip(coeffs_r0); coeffs_r1];
segments = [flip(r0); r1(2:length(r1))];

%Truncated version of the coefficients
coeffs_r0_tr = zeros(length(coeffs_r0),3); 
coeffs_r1_tr = zeros(length(coeffs_r0),3); 

n_seg = 0;
for i = 1:L:length(coeffs_r1)
    for j = 0:L-1
        coeffs_r0_tr(i+j, 1) = 2^(-n_seg)*coeffs_r0(i+j,1);
        coeffs_r0_tr(i+j, 2) = coeffs_r0(i+j, 2);
        coeffs_r0_tr(i+j, 3) = n_seg;
        coeffs_r1_tr(i+j, 1) = -2^(-n_seg)*coeffs_r1(i+j,1);
        coeffs_r1_tr(i+j, 2) = coeffs_r1(i+j, 1) + coeffs_r1(i+j, 2);
        coeffs_r1_tr(i+j, 3) = n_seg;
    end
    n_seg = n_seg+1;
end
coefficients_tr = [flip(coeffs_r0_tr); coeffs_r1_tr];
end