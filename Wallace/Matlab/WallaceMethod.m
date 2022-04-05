
K = 4;
L = 100000;
R = 10;
oldPool = randn(K,L);
newPool = zeros(K,L);
index = 0;
kvect = zeros(K,1);
newK = kvect;
v=1024;

firstPool = reshape(oldPool,1,[]);
[f3,xi3] = ksdensity(firstPool);
figure(1)
semilogy(xi3,f3)
hold on

for r=1:R
    passType = randi(4);
    poolStart = randi(256);
    poolJump = 1:2:255;
    jumpSelect = randi(length(poolJump));
    poolJump = poolJump(1,jumpSelect);
    index = poolStart;

    for l=1:L
        index = index + poolJump;
        if index > 256
            index = index - 256;
        end
        kvect = oldPool(1:K,index);
        C = 0.5*(sum(kvect));

        if passType == 1
            newK(1,1) = C - kvect(3,1);
            newK(2,1) = C - kvect(2,1);
            newK(3,1) = kvect(1,1) - C;
            newK(4,1) = kvect(4,1) - C;
        elseif passType == 2
            newK(1,1) = kvect(1,1) - C;
            newK(2,1) = C - kvect(2,1);
            newK(3,1) = C - kvect(3,1);
            newK(4,1) = kvect(4,1) - C;
        elseif passType == 3
            newK(1,1) = C - kvect(2,1);
            newK(2,1) = kvect(3,1) - C;
            newK(3,1) = kvect(4,1) - C;
            newK(4,1) = C - kvect(1,1);
        elseif passType == 4
            newK(1,1) = kvect(2,1) - C;
            newK(2,1) = kvect(3,1) - C;
            newK(3,1) = C - kvect(1,1);
            newK(4,1) = C - kvect(4,1);
        end

        newPool(:,l) = newK;
    end

    oldPool = newPool;
end

outPool = newPool;
outPool = reshape(outPool,1,[]);
variateSelect = randi(K*L);
x = outPool(variateSelect);
chi = v*(sqrt(2/(9*v))*x+(1-(2/(9*v))))^3;
outPool(variateSelect) = [];
correction = sqrt(chi/1024);
outPool = outPool .* correction;

oldPool = reshape(oldPool,1,[]);
[f,xi] = ksdensity(outPool);
[f2,xi2] = ksdensity(oldPool);
semilogy(xi,f);
hold on
semilogy(xi2,f2);
hold off