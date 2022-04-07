% expontial space??!?! Inverse of the logspace to get better precision
clear all

a = linspace(1, 2, 10);
b = logspace(log10(1), log10(2), 10);
c = linspace(2^1, 2^2, 10);
c = log2(c);
y = ones(10, 1);
figure()
plot(a, y, 'o')
hold on
plot(b, y, 'o')
plot(c, y, 'o')
legend('lin', 'log', 'exp')
hold off