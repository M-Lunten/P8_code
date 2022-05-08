% Testbench results from Box Muller VHDL simulation
fileID = fopen('output_results.txt', 'r');
A = fscanf(fileID, '%s');
fclose(fileID);

data = strsplit(A, ',');

q = quantizer([16, 13]);
data1 = zeros(length(data)-1, 1);
for i = 1:length(data)-1
    data1(i) = bin2num(q, data{i});
end
    
%data1 = data1.*2^(-11);

[fi, xi] = ksdensity(data1);    
x = [-6:.01:6];
y = normpdf(x,0,1);

%%
semilogy(x, y);
hold on
plot(xi, fi);
hold off
legend('Ideal Gaussian', 'VHDL simulation');
grid on
xlim([-5 5])