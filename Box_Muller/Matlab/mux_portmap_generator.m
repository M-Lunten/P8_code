clear all

file = fopen('mux_portmap.txt', 'wt');
fprintf(file, 'mux0 : AU_MUX port map (');
tab = 1;
for i = 0:30
    if tab >= 4 
        fprintf(file, 'data%ix => U_in(%i downto %i),\n\t ', i, (i-1), (i-2));
        tab = 0;
    else
        fprintf(file, 'data%ix => U_in(%i downto %i), ', i, (i-1), (i-2));
    end
    tab = tab + 1;
end

for i = 31:63
    if tab >= 4 
        fprintf(file, 'data%ix => U_in(%i downto %i),\n\t ', i, (60-i), (59-i));
        tab = 0;
    else
        fprintf(file, 'data%ix => U_in(%i downto %i), ', i, (60-i), (59-i));
    end
    tab = tab + 1;
end
fclose(file);