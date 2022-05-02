function [outPool, soq] = wallace_2_pools(init_pool, R, num_ite, num_of_As)
%wallace: orthogonal transformation of an initial gaussian pool to create
%more gaussian numbers (ONLY WORKS WITH K = 4, where init_pool is L by K)
A1 = 0.5 * [1, -1, -1, -1; 1, -1, 1, 1; 1, 1, -1, 1; 1, 1, 1, -1];
A2 = 0.5 * [-1, 1, 1, 1; -1, 1, -1, -1; -1, -1, 1, -1; -1, -1, -1, 1];
A = cat(3, A1, A2);

[K, L] = size(init_pool);
pool_1 = init_pool(:, 1:length(init_pool)/2);
oldPool_1 = reshape(pool_1, [L*K/2, 1]);
pool_2 = init_pool(:,length(init_pool)/2+1:end);
oldPool_2 = reshape(pool_2, [L*K/2, 1]);
newPool_1 = zeros(L*K/2, 1);
newPool_2 = zeros(L*K/2, 1);
outPool = zeros((L*K-1)*num_ite, 1);

G = zeros(num_ite+1, 1);
init_soq = sum(sum(init_pool.^2));
G(1) = 1/sqrt((L*K)/init_soq);

soq = zeros(num_ite, 1);

stride_options = (1:2:L*K/2);

for p = 1:num_ite
    for i = 1:R
        origin_1 = randi([1, L/2]);
        stride_1 = stride_options(randi([1, length(stride_options)]));
        origin_2 = randi([1, L/2]);
        stride_2 = stride_options(randi([1, length(stride_options)]));

        indexes_1 = zeros(L*K/2,1);
        indexes_2 = zeros(L*K/2,1);
        for z = 1:L*K/2
            indexes_1(z) = origin_1 + stride_1*(z-1);
            indexes_2(z) = origin_2 + stride_2*(z-1);
            while indexes_1(z) > L*K/2
                indexes_1(z) = indexes_1(z)-(L*K)/2;
            end
            while indexes_2(z) > L*K/2
                indexes_2(z) = indexes_2(z)-(L*K)/2;
            end
        end

        for j = 1:2:L*K/2
            data = [oldPool_1(indexes_1(j:j+1)); oldPool_2(indexes_2(j:j+1))];
            sel = randi([1, num_of_As]);
            res = A(:,:,sel)*data;
            newPool_1(indexes_1(j:j+1)) = res(1:2);
            newPool_2(indexes_2(j:j+1)) = res(3:4);
        end
        oldPool_1 = newPool_1;
        oldPool_2 = newPool_2;
    end
    % Sum of squares correction
    corr_pool = [oldPool_1; oldPool_2]*G(p);
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
coeff = (x + sqrt(2*N-1))^2;
coeff = coeff/2;
coeff = sqrt(coeff/N);
end

function [coeff] = chi2corr_3(sample, num_of_samples)
x = sample;
N = num_of_samples;
chi = N*((2/(9*N)^(1/2))*x+(1-2/(9*N)))^3;
coeff = sqrt(chi/N);
end