function [samples,A] = LSFR_skip(sampleN,n,Seed,skips)

FB = readcell('LFSR Feedback Table.xlsx');% import table of Feedback for 3- to 168-bit LFSR

Seedint = int2bit(uint64(Seed),n);
coef = str2num(cell2mat(FB(n-2,2)));% coefficients for n-bit LFSR

f = zeros(1,n);
for i = 1:length(coef)
    f(coef(i)) = 1;
end
% Make the transformation matrix
I = eye(n-1);
I = [I zeros(n-1,1)];
S = [f;I];

temp = zeros(1,n);

A = S^skips; % Apply skip-ahead.

% Throw error if A matrix contains non binary values.
if sum(any(A > 1)) > 0
    error('(A) must only contain 1 and 0. \nTry skips lower than %d. \n',skips);
end

% Find the register outputs that should be combined as feedback
K = zeros(1,n);
for i = 1:n
    K(i) = length(find(A(:,i) == 1));
end

samples = zeros(sampleN,1);
for N = 1:sampleN
    for i = 1:n
        res = false;
        C = find(A(:,i));
        if K(i) == 1
            temp(i) = Seedint(C); % If in- and output are directly connected
        else
            for L = 1:K(i)
                res = xor(Seedint(C(L)),res);
            end
            temp(i) = ~res;
        end
    end
    Seedint = temp;
    samples(N,:) = bit2int(fliplr(Seedint)',n);
end
end