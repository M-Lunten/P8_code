% Memory initialization file (MIF) for wallace init pool
% coefficients
clear all
rng(50)
n_pool = 2;
pool_size = 512;
WordLength = 16;

dataPool = randn(1024, 1);
dataPool = pool_normalization(dataPool);

[fi, xi] = ksdensity(dataPool);    
x = [-6:.01:6];
y = normpdf(x,0,1);
plot(x, y);
hold on
plot(xi, fi);
hold off
legend('Ideal Gaussian', 'VHDL simulation');
grid on
xlim([-5 5])

% Setting for the MIF
file_name = 'pool_1.mif';
bit_width = 16;
fraction_length = 11;
data = dataPool(1:512, 1);
depth = length(data);
address_type = 'DEC';
data_type = 'BIN';

% Writing to the file
file = fopen(file_name, 'wt');
fprintf(file, 'WIDTH=');
fprintf(file, '%i;\n', bit_width);
fprintf(file, 'DEPTH=');
fprintf(file, '%i;\n', depth);
fprintf(file, 'ADDRESS_RADIX=');
fprintf(file, '%s;\n', address_type);
fprintf(file, 'DATA_RADIX=');
fprintf(file, '%s;\n', data_type);
fprintf(file, '\n');
fprintf(file, 'CONTENT BEGIN\n');

for i = 0:length(data)-1
    line = bin(sfi(data(i+1), bit_width, fraction_length));
    fprintf(file, '\t%i : %s;\n', i, line);
end
fprintf(file, 'END;');
fclose(file);

% Setting for the MIF
file_name = 'pool_2.mif';
bit_width = 16;
fraction_length = 11;
data = dataPool(513:1024, 1);
depth = length(data);
address_type = 'DEC';
data_type = 'BIN';

% Writing to the file
file = fopen(file_name, 'wt');
fprintf(file, 'WIDTH=');
fprintf(file, '%i;\n', bit_width);
fprintf(file, 'DEPTH=');
fprintf(file, '%i;\n', depth);
fprintf(file, 'ADDRESS_RADIX=');
fprintf(file, '%s;\n', address_type);
fprintf(file, 'DATA_RADIX=');
fprintf(file, '%s;\n', data_type);
fprintf(file, '\n');
fprintf(file, 'CONTENT BEGIN\n');

for i = 0:length(data)-1
    line = bin(sfi(data(i+1), bit_width, fraction_length));
    fprintf(file, '\t%i : %s;\n', i, line);
end
fprintf(file, 'END;');
fclose(file);
