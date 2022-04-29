function [norm_pool] = pool_normalization(pool)
%pool_normalization: normalization of a gaussian pool to have a sum of
%squares equal to the amount of elements in the pool
[K, L] = size(pool);
init_soq = sum(sum(pool.^2));
adjustment = (L*K)/init_soq;
norm_pool = pool*sqrt(adjustment);
end