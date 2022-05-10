%Wallace chi squared cordic for squareroot and multiplication
%Multiplication
clear all

n = 16;
x0 = 45;
x = ones(n, 1)*x0;
y = zeros(n, 1);
z = zeros(n, 1);

K = 1;
for i = 0:n-1
    K = K*(1/sqrt(1+2^(-2*i)));
end

for i = 0:n-1
    if x(i+1)*y(i+1) >= 0
        s = -1;
    else 
        s = 1;
    end
    x(i+2) = x(i+1) - s*2^(-i)*y(i+1);
    y(i+2) = y(i+1) + s*2^(-i)*x(i+1);
    z(i+2) = z(i+1) - s*atan(2^(-i));
end

figure(1)
stairs(x(2:end)*K)
hold on
yline(sqrt(x0*x0))
hold off
grid on
