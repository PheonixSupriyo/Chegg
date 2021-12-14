
% the Fourier Transform of the function f(t)
%y = f(t)=e^(2t)   t>=0
%y = f(t)=e^(-2t)  t<=0

clc
clear all
syms t
w='w';
j='j';

f1 = exp(2*t);
f2=exp(-2*t);

%Fourier Transform Computation
F=int(f2*exp(-j*w.*t),t,-Inf,0) + int(f1*exp(-j*w*t),t,0,Inf)


%syms n integer
%P = 3*pi;      %Time period 
%w=2*pi/P;      %Angular Frequency
%y = 'A';

%Fourier Series Coefficients
%a0=(1/P)*int(y,x,0,pi)-(1/P)*int(y,x,pi,2*pi)
%an=(2/P)*int(y*cos(n*w*x),x,0,pi)-(2/P)*int(y*cos(n*w*x),x,pi,2*pi)
%bn=(2/P)*int(y*sin(n*w*x),x,0,pi)-(2/P)*int(y*sin(n*w*x),x,pi,2*pi)

%Fourier Series of f(x)
%F1=symsum(an*cos(n*w*x)+bn*sin(n*w*x),n,1,5); %Upto 5 harmonics 
%f = a0+F1         %Fourier series representation


%disp(char(total))
%Pretty(total)
%syms x
%F1=symsum((4*pi*cos(n*x)/(pi*(2*n+1)^2)),n,0,20)
%f(x) = pi/2-F1;
%f(x)
%x=linspace(-pi,pi);
%plot(f(x))
%title('Fourier Series of f(x) = |x|')
%xlabel('x')
%ylabel('f(x)')