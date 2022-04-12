clear all

file = fopen('mux_portmap.txt', 'wt');
fprintf(file, 'mux0 : AU_MUX port map (');
tab = 1;
for i = 0:30
    if tab >= 4 
        fprintf(file, 'data%ix => U_in(%i downto %i),\n\t ', i, abs(i-33), abs(i-32));
        tab = 0;
    else
        fprintf(file, 'data%ix => U_in(%i downto %i), ', i, abs(i-33), abs(i-32));
    end
    tab = tab + 1;
end

for i = 31:63
    if tab >= 4 
        fprintf(file, 'data%ix => U_in(%i downto %i),\n\t ', i, abs(i-28), abs(i-29));
        tab = 0;
    else
        fprintf(file, 'data%ix => U_in(%i downto %i), ', i, abs(i-28), abs(i-29));
    end
    tab = tab + 1;
end
fclose(file);