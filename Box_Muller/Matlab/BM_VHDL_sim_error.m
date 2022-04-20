% Analysis of data from VHDL simulation
clear all

data_out = readmatrix('f_block_res.txt', 'OutputType', 'string');
data_in = readmatrix('f_block_testdata.txt', 'OutputType', 'string');
data_in = data_in;
data_out = bin2dec(data_out)*2^(-11);
data_in = bin2dec(data_in)*2^(-32);

n = 1000;
n_seg = 2;
WordLength = 32;
w = WordLength - 1;

L = 4;
[coeffs, coeffs_tr, segments] = BM_hybrid_segs(WordLength, L, 100);

U_4_op = zeros((length(segments)-1)*n,1);
for i = 1:length(segments)-1
    U_4_op((i-1)*n+1:(i-1)*n+n, 1) = linspace(segments(i), segments(i+1), n);
end
f_4_op = sqrt(-2*log(U_4_op));

selected_coeff = discretize(U_4_op, segments);
f_approx_4_op = coeffs(selected_coeff, 1).*U_4_op + coeffs(selected_coeff, 2);

f_4 = sqrt(-2*log(U_4_op));
f_4_VHDL = sqrt(-2*log(data_in));

me_4_op = abs(f_approx_4_op-f_4_op);
me_4_VHDL = abs(data_out-f_4_VHDL);

plot(U_4_op, me_4_op)
hold on
plot(data_in, me_4_VHDL)
yline(2^(-11))
hold off
grid on
legend('Matlab floating point', 'VHDL simulation results')
ylabel('Approximation Error')
xlabel('U_1')