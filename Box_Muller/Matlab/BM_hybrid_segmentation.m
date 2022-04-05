%Hybrid segmentation of f() for Box Muller implementation
%f = sqrt(-2*ln(U1))
clear all

U = logspace(-12, log10(0.5), 1000);
U = [U expspace(0.5, 1, 1000)];
U = [U linspace(0.3, 0.7, 1000)];
U = sort(U);
f = sqrt(-2*log(U));

WordLength = 32;
w = 2*(WordLength - 1);
L = 4;

%Segmenting
r0 = zeros(WordLength-1, L+1);
r1 = ones(WordLength-1, L+1);

for i = 1:WordLength-2
    r0(i, 1) = 2^(-i-1);
    r0(i, L+1) = 2^(-i);
    X = abs(r0(i,1) - r0(i, 4))/L;
    r1(i, 1) = 1-2^(-i);
    r1(i, L+1) = 1-2^(-i-1);
    Y = abs(r0(i,1) - r0(i, 4))/L;
    for j = 1:L-1
        r0(i, j+1) = r0(i, 1) + j*X;
        r1(i, j+1) = r1(i, 1) + j*Y;
    end
end
r0(WordLength-1, 5) = r0(WordLength-2, 1);
r0(WordLength-1, 4) = r0(WordLength-2, 1)-r0(WordLength-2, 1)/L;
r0(WordLength-1, 3) = r0(WordLength-2, 1)-2*r0(WordLength-2, 1)/L;
r0(WordLength-1, 2) = r0(WordLength-2, 1)-3*r0(WordLength-2, 1)/L;
r1(WordLength-1, 1) = r1(WordLength-2, 5);
r1(WordLength-1, 2) = r1(WordLength-2, 5)+(1-r1(WordLength-2, 5))/L;
r1(WordLength-1, 3) = r1(WordLength-2, 5)+2*(1-r1(WordLength-2, 5))/L;
r1(WordLength-1, 4) = r1(WordLength-2, 5)+3*(1-r1(WordLength-2, 5))/L;
%883585
plot(U, f, 'LineWidth', 1)
hold on
for i = 1:L+1
    xline(r0(:,i), "color", 'red')
    xline(r1(:,i), 'color', '#77AC30')
end
hold off

%{
lin_approx = [];
temp = [];
coeff = [];

for i = 1:length(r0)
    for j = 1:width(r0)-1
        U_sel = find(U >= r0(i, j) & U < r0(i, j+1));
        x = U(U_sel);
        y = sqrt(-2*log(U(U_sel)));
        P = polyfit(x, y, 1);
        coeff(i,j,:) = P; 
        temp = [temp (P(1)*x + P(2))];
        lin_approx = [lin_approx x];
    end
end
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [space] = expspace(a, b, steps)
    gf = (b/a)^(1/steps - 1);
    space = -a*gf.^((1:steps)-1) + 1;
end

