clc
clear all
close all
%%
syms x1
Gaussfunc(x1) = exp(-x1.^2/2);
%%
N = 8; %Number of boxes
[z,v] = zigplot(N,Gaussfunc); % Generate N box points with area v
xi = z(:,1);
z_p = zeros(length(z)-1,2);
effiniency = zeros(1,1);
%% Area calculations
er = zeros(N-1,1);
area = zeros(N-1,1);
area(1) = z(1,1)*z(1,2)+int(Gaussfunc(x1),[z(1,1) inf]);
for i=2:N
    area(i) = z(i-1,1)*(z(i,2)-z(i-1,2));
end
effiniency(1) = (1/sum(area))*int(Gaussfunc(x1),[0 inf]);
for i = 1:N
    err(i) = (area(i)-area(1))^2;
end
MSE = mean((area-area(1)).^2);

%% Plot squares
clc
close all
plot(z(:,1),z(:,2),'.')
xlim([0 4])
grid on
hold on
rectangle('Position',[0 0 z(1,1) z(1,2)],'FaceColor',[1 0 0])
for i = 1:N-1
    rectangle('Position',[0 z(i,2) z(i,1) z(i+1,2)-z(i,2)])
    z_p(i,:) = [z(i,1) z(i+1,2)];
end
fplot(Gaussfunc(x1),'--',LineWidth=0.8)
plot(z_p(:,1),z_p(:,2),'.') 


%% Plot color
M = (z(1,1):0.001:4);
fill([M,4,z(1,1)],[Gaussfunc(M),0,0],'r')

%%
%rng(1);
x = zeros(1000,1);

for L = 1:1000
    U = rand;
    j = uint32(round(2^32*U));
    i = bit2int(int2bit(j,log2(N)),log2(N))+1;
    x(L) = U*xi(i);
end
%%
xline(x);
if i == N
    fprintf('i:     %d \nN: %d\nGoto Tail\n',i,N)
elseif x < xi(i+1)
    fprintf('i:     %d \nN: %d\nx is in C\n',i,N)
else
    fprintf('i:     %d \nN: %d\nGoto top region\n',i,N)
end
