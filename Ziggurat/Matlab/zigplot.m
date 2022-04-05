function [z,area] = zigplot(n,f)
syms x v
x_val = zeros(n,1);
y_val = zeros(n,1);
a = sym('x%d',[1 n]);
for i = 1:n-1
    eq(i) = v == a(i)*(f(a(i+1))-f(a(i)));
end
%% Setting up equation system and solving it

equ = [a(end) == 0, v == (a(1)*f(a(1)))+int(f(x),[a(1) inf]),eq];
S = vpasolve(equ,a,v);
%% Convert to float
digits(10);
results = double(vpa(struct2cell(S)));
x_val =  results(1:end-1);
y_val = double(vpa(f(x_val)));
area = results(end);
%% Generate z-point
z = [x_val y_val];
end