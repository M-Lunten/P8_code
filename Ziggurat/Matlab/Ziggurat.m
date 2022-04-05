clc
clear all
close all
%%
syms x1
Gaussfunc(x1) = 1/sqrt(2*pi)*exp(-x1.^2/2);
efficiency = zeros(1,1);
%%
N = 256; %Number of boxes
[z,v] = zigplot(N,Gaussfunc); % Generate N box points with area v

% Area calculations
er = zeros(N-1,1);
area = zeros(N-1,1);
area(1) = z(1,1)*z(1,2)+int(Gaussfunc(x1),[z(1,1) inf]);
for i=2:N
    area(i) = z(i-1,1)*(z(i,2)-z(i-1,2));
end
efficiency(1) = (1/sum(area))*int(Gaussfunc(x1),[0 inf]);
z_p = zeros(length(z)-1,2);
xi = z(:,1);
yi = z(:,2);

%%
%rng(1);
reject1 = 0;
reject2 = 0;
gauss = 0;
tail = 0;
X = 0;
x = [];
for L = 1:100000
    U = rand;
    j = uint16(round(2^16*U));
    i = bit2int(int2bit(j,log2(N)),log2(N))+1;
    s = (-1)^(randi([0,1]));
    X = s*U*xi(i);
    if i ~= N
        if X < xi(i+1)
            x(end+1) = X;
        elseif yi(i) < Gaussfunc(X)
            x(end+1) = X;
            gauss = gauss + 1;
        else
            reject1 = reject1 + 1;
        end
    elseif i == N
        if yi(i) < X^2/2
            x(end+1) = X;
            tail = tail + 1;
        else
            reject2 = reject2 + 1;
        end
    end
end
%% Plot squares
clc
close all
plot(z(:,1),z(:,2),'.')
xlim([-4 4])
grid on
hold on
rectangle('Position',[0 0 z(1,1) z(1,2)],'FaceColor',[1 0 0])
for i = 1:N-1
    rectangle('Position',[0 z(i,2) z(i,1) z(i+1,2)-z(i,2)])
    z_p(i,:) = [z(i,1) z(i+1,2)];
end
fplot(Gaussfunc(x1),'--',LineWidth=0.8)
plot(z_p(:,1),z_p(:,2),'.')
ksdensity(x); %Plot generated dist
% Plot color
M = (z(1,1):0.001:4);
fill([M,4,z(1,1)],[Gaussfunc(M),0,0],'r')