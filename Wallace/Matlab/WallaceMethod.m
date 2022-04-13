
%rng(1);

totalNum = 50000;
K = 4;
L = 256;
R = 10;
oldPool = randn(totalNum, 1);
newPool = zeros(K,L);
index = 0;
kvect = zeros(K,1);
newK = kvect;
v=1024;

firstPool = oldPool;
[f3,xi3] = ksdensity(firstPool);
oldPool = reshape(oldPool(1:K*L), [K, L]);
inital_G = 1/sqrt((K*L)/(sum(sum(oldPool.^2))));
figure(1)
plot(xi3,f3)
hold on
A = [1 -1 -1 -1; 1 -1 1 1; 1 1 -1 1; 1 1 1 -1];

totalNum = totalNum + mod(totalNum,(L*K-1));
outPool = zeros(totalNum,1);
for a=1:(L*K-1):totalNum
    for r=1:R
        passType = 1;%randi(4);
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
            C = (sum(kvect))/2;

            if passType == 1
                newK = A*kvect*0.5;

                %newK(1,1) = C - kvect(3,1);
                %newK(2,1) = C - kvect(2,1);
                %newK(3,1) = kvect(1,1) - C;
                %newK(4,1) = kvect(4,1) - C;
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

    out = reshape(newPool,[],1)*inital_G;
    variateSelect = randi(K*L);
    x = out(variateSelect);
    out(variateSelect) = [];
    tmp = 1+1/(8*(K*L));
    tmp1 = sqrt(2*(K*L) - tmp^2);
    inital_G = sqrt(1/(2*K*L))*tmp*(tmp1/tmp + x) * (tmp1/tmp) + tmp*sqrt(2*K*L);
    outPool(a:(a+(L*K-2)),:) = out;
end


x_ideal = [-10:.01:10];
y_ideal = normpdf(x_ideal,0,1);

oldPool = reshape(oldPool,1,[]);
[f,xi] = ksdensity(outPool);
[f2,xi2] = ksdensity(out);
plot(xi,f);
plot(xi2,f2);
plot(x_ideal, y_ideal);
xlim([-4, 4]);
hold off
legend('First', 'After correction', 'Before correction', 'Ideal Guassian');

save('outPool.mat','outPool');