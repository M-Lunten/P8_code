doubleImplementation = matfile('outPool.mat');
dOut = doubleImplementation.outPool;

rng(1);

WL=16;

K = 4;
L = 20000;
R = 2;
oldPool = randn(K,L);
oldPool = fi(oldPool, 1, WL);
newPool = zeros(K,L);
newPool = fi(newPool, 1, WL);
index = 0;
kvect = zeros(K,1);
newK = kvect;
newK = fi(newK, 1, WL);
v=fi(1024, 1, WL);

firstPool = reshape(oldPool,1,[]);

for r=1:R
    passType = randi(4);
    poolStart = randi(256);
    poolJump = 1:2:255;
    jumpSelect = randi(length(poolJump));
    poolJump = poolJump(1,jumpSelect);
    index = poolStart;

    for l=1:L
        index = index + poolJump;
        if index > L
            index = index - L;
        end
        kvect = oldPool(1:K,index);
        k1 = fi(kvect(1,1), 1, WL);
        k2 = fi(kvect(2,1), 1, WL);
        k3 = fi(kvect(3,1), 1, WL);
        k4 = fi(kvect(4,1), 1, WL);
        half = fi(0.5, 1, WL);
        C = half * (k1 + k2 + k3 + k4);
        C = fi(C, 1, WL);

        if passType == 1
            newK(1,1) = C - k3;
            newK(2,1) = C - k2;
            newK(3,1) = k1 - C;
            newK(4,1) = k4 - C;
        elseif passType == 2
            newK(1,1) = k1 - C;
            newK(2,1) = C - k2;
            newK(3,1) = C - k3;
            newK(4,1) = k4 - C;
        elseif passType == 3
            newK(1,1) = C - k2;
            newK(2,1) = k3 - C;
            newK(3,1) = k4 - C;
            newK(4,1) = C - k1;
        elseif passType == 4
            newK(1,1) = k2 - C;
            newK(2,1) = k3 - C;
            newK(3,1) = C - k1;
            newK(4,1) = C - k4;
        end

        newPool(:,l) = newK;
    end

    oldPool = newPool;
end

outPool = newPool;
outPool = reshape(outPool,1,[]);
variateSelect = randi(K*L);
x = outPool(variateSelect);
x = fi(x, 1, WL);
chi = v*(sqrt(2/(9*v))*x+(1-(2/(9*v))))^3;
chi = fi(chi, 1, WL);
outPool(variateSelect) = [];
correction = sqrt(chi/1024);
correction = fi(correction, 1, WL);
outPool = outPool .* correction;

oldPool = reshape(oldPool,1,[]);

outPool = double(outPool);
oldPool = double(oldPool);
firstPool = double(firstPool);

[f,xi] = ksdensity(outPool);
[f2,xi2] = ksdensity(oldPool);
[f3,xi3] = ksdensity(firstPool);
[f4,xi4] = ksdensity(dOut);



figure(1)
semilogy(xi3,f3)
hold on
semilogy(xi4,f4);
hold on
semilogy(xi,f);
hold on
semilogy(xi2,f2);
hold off
legend('Original Matlab', 'Double', 'After Chi','Before Chi');