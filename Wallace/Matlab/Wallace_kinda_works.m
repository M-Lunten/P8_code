% Wallace algorithm for generating Gaussian random numbers given an initial
% pool of Gaussian random numbers
clear all

% K*L matrix is used
L = 1024;
K = 1;
R = 1;
num_ite = 100;
stride_options = (1:2:L);

%rng(1000)
init_N = randn(K, L);
oldPool = init_N;
newPool = zeros(K, L);
out = [];
out_noCorr = [];
G = zeros(num_ite+1, 1);
G(1) = 1/sqrt((L*K)/(sum(sum(init_N.^2))));
%Transformation matrices
A1 = 0.5 * [1, 1, -1, 1; 1, -1, 1, 1; 1, -1, -1, -1; -1, -1, -1, 1];
A2 = 0.5 * [1, -1, -1, -1; 1, -1, 1, 1; 1, 1, -1, 1; -1, -1, -1, 1];

for p = 1:num_ite
    for i = 1:R
        origin = randi([1, L]);
        stride = stride_options(randi([1, length(stride_options)]));
        mask = randi([1, L-1]);
        vector = zeros(4,1);
        for z = 1:1024
            vector(z) = (origin + stride*(z-1));
            while vector(z) > L-1
                vector(z) = vector(z) - L;
            end
            vector(z) = bitxor(vector(z), mask)+1;
        end
        data_vector = oldPool(vector);
        for j = 1:4:L
            data = data_vector(j:j+3);
            if j > L/2
                newPool(j:j+3) = A1*data';
            else
                newPool(j:j+3) = A2*data';
            end
        end
        oldPool = newPool;
    end
    %Correction
    tmp_pool = oldPool;
    out_noCorr = [out_noCorr, tmp_pool(1:end-1)];
    G(p+1) = chi2corr_2(tmp_pool(end)*G(p), K*L);
    out = [out, tmp_pool(1:end-1)*G(p)];
end

[w_f, w_x] = ksdensity(out);
[w_f_n, w_x_n] = ksdensity(out_noCorr);
[init_f, init_x] = ksdensity(reshape(init_N, [K*L, 1]));
x = [-6:.01:6];
y = normpdf(x,0,1);

figure(1)
plot(x, y);
hold on
plot(init_x, init_f);
plot(w_x, w_f);
plot(w_x_n, w_f_n);
hold off
grid on
legend('Ideal Gaussian', 'Initial pool', 'Wallace GRNG', 'No correction')

function [coeff] = chi2corr(sample, num_of_samples)
x = sample;
N = num_of_samples;
A = 1+1/(8*N);
C = sqrt(2*N - A^2);
B = C/A;
S = sqrt(1/(2*N))*A*(B+x);
%S = 0.5*(C+A*x)^2;
C1 = A*sqrt(2*N);
coeff = S*B + C1;
coeff = sqrt(coeff);
end

function [coeff] = chi2corr_2(sample, num_of_samples)
x = sample;
N = num_of_samples;
coeff = (x + sqrt(2*N-1))^2;
coeff = coeff/2;
coeff = sqrt(coeff/N);
end
