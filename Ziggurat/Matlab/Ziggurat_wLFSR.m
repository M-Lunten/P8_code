function[out] = Ziggurat_wLFSR(samples,K,Seed)
N = 2^K; %Number of boxes
const = 1/sqrt(2*pi);
str = append('Ziggurat Points/Z_',num2str(N),'.mat');
load(str);
load("rectanglesArea.mat");
load("S0areas.mat");
area = nArea(K);
S0area = S0nArea(K);
%z = ufi(z,16,14);
x = [z(1,1); z(1:end-1,1)];
y = z(:,2);
%% Ziggurat Algorithm
out = [];
S = 0;
rng(1);
U1 = LFSR_skip(samples,40,Seed,19)/2^40;
U2 = LFSR_skip(samples,40,Seed+1,19)/2^40; 
%i = LFSR_skip(samples,8,randi([0 2^8-1]),3)+1;
%U1 = rand(samples,1);
%U2 = rand(samples,1);
%i = randi([1 N],samples,1);
i = ceil(LFSR_skip(samples,49,Seed,19)/2^(49-K));
for n = 1:samples
    if mod(i(n),2) == 0
        S = -1;
    else 
        S = 1;
    end
    X = U1(n)*x(i(n));
    if i(n) ~= 1 && i(n) ~= N
        if X < x(i(n)+1)
            out(end+1) = X*S;
        %elseif y(i(n))-(U2(n)*(y(i(n))-y(i(n)-1))) < const*exp(-X^2/2)
            %out(end+1) = X*S;
        end
    elseif i(n) == N
        if y(i(n))-(U2(n)*(y(i(n))-y(i(n)-1))) < const*expCordic(-X^2/2)
            out(end+1) = X*S;
        end
    elseif i(n) == 1
        if U2(n)*area < S0area
            out(end+1) = X*S;
        end
    end

end
end