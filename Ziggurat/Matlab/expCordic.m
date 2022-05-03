function [res_x] = expCordic(exponent)
n = 16;
if exponent < 0
    sign = -1;

else
    sign = 1;
end
x = zeros(n,1);
y = zeros(n,1);
z = zeros(n,1);
S = [1 2 3 4 4 5 6 7 8 9 10 11 12 13 13 14];
x(1) = 1;
y(1) = 1*sign;
z(1) = sign*exponent;
K = 1;
for i = S
    K = K/sqrt(1-2^(-2*i));
end
s_1 = [];
inc = 1;
for i = S
    if z(inc) >= 0
        s_1(end+1) = 1;
    else 
        s_1(end+1) = -1;
    end
    x(inc+1) = x(inc) + s_1(end)*2^(-i)*y(inc);
    y(inc+1) = y(inc) + s_1(end)*2^(-i)*x(inc);
    z(inc+1) = z(inc) - s_1(end)*atanh(2^(-i));
    inc = inc+1;
end
res_x = x(end)*K;
end