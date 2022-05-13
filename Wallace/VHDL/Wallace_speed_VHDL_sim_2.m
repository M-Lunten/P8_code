% Data processing from VHDL simulation of Wallace speed VHDL
clear all
fileID = fopen('output_results.txt', 'r');
A = fscanf(fileID, '%s');
fclose(fileID);

data = strsplit(A, ',');

q = quantizer([16, 11]);
data1 = zeros(length(data)-1, 1);
for i = 1:length(data)-1
    data1(i) = bin2num(q, data{i});
end
    
%data1 = data1.*2^(-11);

[fi, xi] = ksdensity(data1);    
x = (-6:.01:6);
y = normpdf(x,0,1);

%%
figure(1)
semilogy(x, y);
hold on
plot(xi, fi);
hold off
legend('Ideal Gaussian', 'VHDL simulation');
grid on
xlim([-5 5])
xlabel('x')
ylabel('Probability')
title('Log scale PDF for a VHDL simulation of Wallace')

figure(2)
plot(x, y);
hold on
plot(xi, fi);
hold off
legend('Ideal Gaussian', 'VHDL simulation');
grid on
xlim([-5 5])
title('Linear scale PDF for a VHDL simulation of Wallace')
xlabel('x')
ylabel('Probability')


array = zeros(floor(length(data1)/1024), 1);
for i=1:floor(length(data1)/1024)
    elements = data1(1+(1024*(i-1)):1024+(1024*(i-1)), 1);
    array(i) = sum(elements.^2);
end

L = 256;
K = 4;
[corr_f, corr_x] = ksdensity(array);
x_chi = L*K*0.5:0.2:L*K*1.5;
y_chi = chi2pdf(x_chi,L*K);

figure(3)
plot(x_chi, y_chi)
hold on
plot(corr_x, corr_f)
hold off
grid on
legend('\chi^2 distribution', 'sum of squares');
xlabel('x')
ylabel('Probability')
title('Sum of squares for VHDL simulation')

[x, lags] = xcorr(data1, 'normalized');
figure(4)
plot(lags, x)
