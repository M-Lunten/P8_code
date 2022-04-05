function [coefficients, coefficients_tr, segments] = BM_hybrid_segs(WordLength, L)
%BM_hybrid_segs: creates the hybrid segmentation of the function 
%sqrt(-2*ln(U1))
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

f_r0 = sqrt(-2.*log(r0));
f_r1 = sqrt(-2.*log(r1));
coeffs_r0 = zeros(124,2);
coeffs_r1 = zeros(124,2);

for i = 1:length(r0)-1
    coeffs_r0(i,:) = polyfit([r0(i), r0(i+1)], [f_r0(i), f_r0(i+1)], 1);
    coeffs_r1(i,:) = polyfit([r1(i), r1(i+1)], [f_r1(i), f_r1(i+1)], 1);
end

coefficients = [flip(coeffs_r0); coeffs_r1];
segments = [flip(r0); r1(2:length(r1))];

%Truncated version of the coefficients
for i = 1:100

end

end