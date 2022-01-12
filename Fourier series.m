% the Fourier series of the function f(x)
%  x(t)=1 0 < t < 1
%  x(t) =0  1 < t < 2
syms t n 
syms n integer
P = 2*pi;
y = -1 ;                %f(t)


%Trignometric Fourier Series Coefficients
a0=(1/P)*int(y,t,0,pi)
an=(2/P)*int(y*cos(n*t),t,0,pi)
bn=(2/P)*int(y*sin(n*t),t,0,pi)
%F1=symsum(an*cos(n*t)+bn*sin(n*t),n,1,25)
%f(t) = (a0)+F1;
%disp(char(total))
%Pretty(total)


%10 harmonic Componenets

t = 0:0.1:2*pi;        %Array of t values

F1=a0 + symsum(an*cos(n*t)+bn*sin(n*t),n,1,10); %Array of 10 harmonic componenets
F = double(F1)
plot(t,F1)                                     % Plotting all the harmonics
title('Fourier series of f(t) = -1')
xlabel('t')
ylabel('f(t)')
