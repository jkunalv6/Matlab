clc, clearvars , close all ,format compact

f = @(x) 10 + 5*x.^2 ;

N = 10000;
a = 0;
b = 100;
M = 1.4*max(f(linspace(a,b)));

for i = 1:N
    x_val = rand(1)*(b-a) + a;
    y_val = rand(1)*M;

    fx= f(x_val);

    if y_val < fx
        under(i,1) = x_val;
        under(i,2) = y_val;
    else 
        above(i,1) = x_val;
        above(i,2) = y_val;
    end 
end 



under2(:,1) = nonzeros(under(:,1));
under2(:,2) = nonzeros(under(:,2));
above2(:,1) = nonzeros(above(:,1));
above2(:,2) = nonzeros(above(:,2));

plot(above2(:,1), above2(:,2), 'ro', 'MarkerFaceColor', 'r')
hold on
plot(under2(:,1), under2(:,2), 'bo', 'MarkerFaceColor','b')
title('Monte Carlo Integration'), xlabel('x'), ylabel('y')
legend('above', 'below')


MonteCarlo_Integral = length(under2)/N*(M*(b-a))
MATLAB_Integral = integral(f,a,b)
PercentError = abs(MATLAB_Integral - MonteCarlo_Integral)/MATLAB_Integral * 100

 



