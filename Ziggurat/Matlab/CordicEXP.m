%CORDIC for exp() calculations
clear all
close all
clc
exponent = 0.065292697517360^2/2;
n = 16;
x = zeros(n,1);
y = zeros(n,1);
z = zeros(n,1);
S1 = [1 2 3 4 4 5 6 7 8 9 10 11 12 13 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30];
S2 = [1 2 3 4 4 5 6 7 8 9 10 11 12 13 13 14];
x(1) = 1;
if exponent > 0
    y(1) = 1;
else
    y(1) = -1;
end
z(1) = exponent;
a = zeros(n,1);
K = 1;
for i = S2
    K = K/sqrt(1-2^(-2*i));
end
s_1 = [];
inc = 1;
for i = S2
    i
    if z(inc) >= 0
        s_1 = 1;
    else 
        s_1 = -1;
    end
    x(inc+1) = x(inc) + s_1*2^(-i)*y(inc);
    y(inc+1) = y(inc) + s_1*2^(-i)*x(inc);
    z(inc+1) = z(inc) - s_1*atanh(2^(-i));
    inc = inc+1
end
res_x = x(end)*K;
figure(1)
stairs(0:n, x*K)
hold on
yline(exp(exponent))
hold off
grid on
%xlim([0, 17])
ylim([0, 1.6])
title('exp(exponent) after scaling')
ylabel('x(i)')
xlabel('Iteration [i]')