% Memory initialization file (MIF) creation for the hybrid segmentation
% coefficients
clc
close all
clear all
format longg
angles = [0:(pi/2)/1023:(pi/2)];
format longg
sinAngles = sin(angles)
% Setting for the MIF
file_name = 'sin_cos.mif';
bit_width = 16;
fraction_length = 15;
data = sinAngles;
depth = length(data);
address_type = 'DEC';
data_type = 'BIN';
bsin = fi(sinAngles,1,16,15);

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


