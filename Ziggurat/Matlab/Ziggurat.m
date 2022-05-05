clc
clear all
close all
%%
syms x1 ap1
const = 1/sqrt(2*pi);
%const = 1;
Gaussfunc(x1) = const*exp(-x1.^2/2);
tay(ap1) = -0.1995*ap1^2+0.3989;
efficiency = zeros(1,1);
%%
N = 2^8; %Number of boxes
%[z,v] = zigplot(N,Gaussfunc); % Generate N box points with area v
str = append('Ziggurat Points/Z_',num2str(N),'.mat');
load(str)
fprintf('Number of rectangles: %d\nLoading %s\n',N,str);
plotAcc = 0;
plotRej = 1;
%%

% Area calculations
er = zeros(N-1,1);
area = zeros(N-1,1);
S0area = z(1,1)*z(1,2);
area(1) = S0area+int(Gaussfunc(x1),[z(1,1) inf]);
for i=2:N
    area(i) = z(i-1,1)*(z(i,2)-z(i-1,2));
end
efficiency(1) = (1/sum(area))*int(Gaussfunc(x1),[0 inf]);
fprintf('Efficiency: %f\nArea of rectangles: %f\n',efficiency(1),area(1));

z_p = zeros(length(z)-1,2);
xi = [z(1,1); z(1:end-1,1)];
yi = z(:,2);

%%
%rng(1);
samples = 5000;
reject1 = 0;
reject2 = 0;
reject3 = 0;
rejectVal = [];
top = 0;
gauss1 = 0;
gauss2 = 0;
tail = 0;
X = 0;
p = zeros(samples,2);
test = [];
x = [];
v = [];
%rng(1);
for L = 1:samples
    U1 = rand;
    U2 = rand;
    i = randi([1 N]); %Generate 8 bit random number
    s = (-1)^(randi([0,1])); % random sign of the sample
    X = U1*xi(i);
    if i ~= 1 && i ~= N
        % Section 1
        if X < xi(i+1) % Accept
            x(end+1) = X*s;
            p(L,:) = [X yi(i)];
            gauss1 = gauss1+1;
            % Section 2
        elseif yi(i)-(U2*(yi(i)-yi(i-1))) < const*exp(-X^2/2)
            x(end+1) = X*s;
            p(L,:) = [X yi(i)];
            gauss2 = gauss2 + 1;
            % Section3
        else    %Reject
            rejectVal(end+1,:) = [X yi(i)];
            reject1 = reject1 + 1;
        end
    elseif i == N
        % Section 4
        %if yi(i)-(U2*(yi(i)-yi(i-1))) < 1/sqrt(2*pi)*expCordic(-X^2/2)
        if  yi(i)-(U2*(yi(i)-yi(i-1))) < -0.0423*X + 0.3989
            x(end+1) = X*s;
            p(L,:) = [X yi(i)];
            top = top+1;
            % Section 5
        else    %Reject
            rejectVal(end+1,:) = [X yi(i)];
            reject2 = reject2 + 1;
        end
    elseif i == 1
        % Section 6
        if U2*area(1) < S0area
            x(end+1) = X*s;
            p(L,:) = [X yi(i)];
            tail = tail + 1;
            % Section 7
        else
            rejectVal(end+1,:) = [X yi(i)];
            reject3 = reject3 + 1;
        end
    end
end

gauss1P = gauss1/samples*100;
fprintf('Procentage of samples accepted in section 1: %f%%\n',gauss1P)
gauss2P = gauss2/samples*100;
fprintf('Procentage of samples accepted in section 2: %f%%\n',gauss2P)
reject1P = reject1/samples*100;
fprintf('Procentage of samples rejected in section 3: %f%%\n',reject1P)
topP = top/samples*100;
fprintf('Procentage of samples accepted in section 4: %f%%\n',topP)
reject2P = reject2/samples*100;
fprintf('Procentage of samples rejected in section 5: %f%%\n',reject2P)
tailP = tail/samples*100;
fprintf('Procentage of samples accepted in section 6: %f%%\n',tailP)
reject3P = reject3/samples*100;
fprintf('Procentage of samples rejected in section 7: %f%%\n',reject3P)
%%
[R1,lag1] = xcorr(x);
x2 = randn(samples,1);
[R2,lag2] = xcorr(x2);
fprintf('Mean of x: %d\nVariance of x: %d\n',mean(x),var(x))
%% Plot squares
figure()
plot(z(:,1),z(:,2),'.r')
title('PDF with Ziggurat rectangles')
xlim([-0.3 0.3])
ylim([0.38 0.4])
grid on
hold on
rectangle('Position',[0 0 z(1,1) z(1,2)],'FaceColor',[1 0 0])
for i = 1:N-1
    rectangle('Position',[0 z(i,2) z(i,1) z(i+1,2)-z(i,2)])
    z_p(i,:) = [z(i,1) z(i+1,2)];
end
fplot(Gaussfunc(x1),'--',LineWidth=0.8)
plot(z_p(:,1),z_p(:,2),'.r')
line([0 xi(256)],[yi(256) yi(255)])
fplot(tay(ap1),LineWidth=0.8)
if plotAcc == 1
    plot(p(:,1),p(:,2),'.');
end
if plotRej == 1
    plot(rejectVal(:,1),rejectVal(:,2),'.','LineWidth',0.1);
end
% Plot color
M = (z(1,1):0.001:4);
fill([M,4,z(1,1)],[Gaussfunc(M),0,0],'r')
%ksdensity(x); %Plot generated dist

figure()
subplot(2,1,1)
plot(lag1,R1/samples)
axis([min(lag1) max(lag1) -0.1 1.1])
title('Auto-Corrolation of GRN samples')
subplot(2,1,2)
plot(lag2,R2/samples)
axis([min(lag2) max(lag2) -0.1 1.1])