function [outPool, soq] = fp_wallace(init_pool, R, num_ite, num_of_As, mask_op)
%wallace: orthogonal transformation of an initial gaussian pool to create
%more gaussian numbers (ONLY WORKS WITH K = 4, where init_pool is L by K)
%Fixed point format is Q16.11
A1 = 0.5 * [1, 1, -1, 1; 1, -1, 1, 1; 1, -1, -1, -1; -1, -1, -1, 1];
A2 = 0.5 * [1, -1, -1, -1; 1, -1, 1, 1; 1, 1, -1, 1; -1, -1, -1, 1];
A3 = 0.5 * [1, -1, 1, 1; -1, -1, 1, -1; -1, -1, -1, 1; -1, 1, 1, 1];
A4 = 0.5 * [-1, 1, -1, -1; -1, -1, 1, -1; -1, 1, 1, 1; 1, 1, 1, -1];
A = cat(3, A1, A2, A3, A4);

[K, L] = size(init_pool);
oldPool = sfi(reshape(init_pool, [L*K, 1]), 16, 11);
newPool = zeros(L*K, 1);
outPool = zeros((L*K-1)*num_ite, 1);

G = zeros(num_ite+1, 1);
init_soq = sum(sum(init_pool.^2));
G(1) = 1/sqrt((L*K)/init_soq);

soq = zeros(num_ite, 1);

stride_options = (1:2:L*K);

for p = 1:num_ite
    for i = 1:R
        origin = randi([1, L]);
        stride = stride_options(randi([1, length(stride_options)]));
        if mask_op == 1
            mask = randi([0, L-1]);
        end

        indexes = zeros(L*K,1);
        for z = 1:L*K
            indexes(z) = origin + stride*(z-1);
            while indexes(z) > L*K
                indexes(z) = indexes(z)-(L*K);
            end
            if mask_op == 1
                indexes(z) = bitxor(indexes(z)-1, mask)+1;
            end
        end

        for j = 1:K:L*K
            data = oldPool(indexes(j:j+K-1));
            sel = randi([1, num_of_As]);
            newPool(indexes(j:j+K-1)) = sfi(A(:,:,sel)*data, 16, 11);
        end
        oldPool = newPool;
    end
    % Sum of squares correction
    corr_pool = sfi(oldPool*G(p), 16, 11);
    soq(p) = sum(sum(corr_pool.^2));
    G(p+1) = chi2corr_2(corr_pool(end), L*K);
    outPool(((p-1)*(L*K-1))+1:((p-1)*(L*K-1))+(L*K-1), 1) = corr_pool(1:end-1);
end
end

%% Correction calculation functions
function [coeff] = chi2corr(sample, num_of_samples)
x = sample; %1 sample
N = num_of_samples; %number of samples is equal to 1024 in most cases
A = 1+(1/(8*N));
C = sqrt(2*N - A^2);
B = C/A;
S = 0.5*((C+A*x)^2); %Equation 10
%S = sqrt(1/(2*N))*A*(B+x); %Equation 11
C1 = A*sqrt(2*N);
coeff = S;
end

function [coeff] = chi2corr_2(sample, num_of_samples)
x = sample;
N = num_of_samples;
constant = ufi(45.243784103454470, 16, 10);
coeff_tmp = ufi((x + constant), 16, 10);
coeff_tmp = ufi(coeff_tmp^2, 16, 4);
coeff_tmp = ufi(coeff_tmp/2, 16, 5);
coeff_tmp = ufi((coeff_tmp/N), 16, 15);
coeff = ufi(sqrt(coeff_tmp), 16, 15);
end