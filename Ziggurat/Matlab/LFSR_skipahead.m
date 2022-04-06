%%Linear Feedback Shift Register with Skip-Ahead
clc
clear all
close all
%%
n = 8;
Seedint = int2bit(uint8(Seed),n)';
coef = [8 6 5 4];

f = zeros(1,n);
for i = 1:length(coef)
    f(coef(i)) = 1;
end
I = eye(n-1);
I = [I zeros(n-1,1)];
S = [f;I];
%%
skips = 2;
res = false;
temp = zeros(1,n);

A = S^skips;
if any(A > 1)
    error('(A) must only contain 1 and 0. \nTry skips lower than %d. \n',skips);
end
K = zeros(1,n);
for i = 1:n
    K(i) = length(find(A(:,i) == 1));
end
sampleN = 10;
samples = zeros(sampleN,1);
for N = 1:sampleN
    for i = 1:n
        res = false;
        C = find(A(:,i));
        if K(i) == 1
            temp(i) = Seedint(C);
        else
            for L = 1:K(i)
                res = xor(Seedint(C(L)),res);
            end
            temp(i) = ~res;
        end
    end
    Seedint = temp;
    samples(N,:) = bit2int(Seedint',n);
end
