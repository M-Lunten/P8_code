% Setting for the MIF
file_name = 'mux_connect.txt';

% Writing to the file
file = fopen(file_name, 'wt');

%data(i)x => counter_out(32*i+31 downto 32*i), 
for i = 0:127
    tmp = "data" + i + "x";
    tmp1 = 32*i+31;
    tmp2 = 32*i;
    string = tmp1 + " downto " + tmp2;
    fprintf(file, '%s => counter_out(%s), \n', tmp, string);
end

fclose(file);