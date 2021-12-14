% the Fourier series of the function f(x)
  %f(x)=1 -pi < t < 0
  %f(x) =cos(x/2) 0 < t < pi
syms x n 
syms n integer
P = 2*pi;         %Time period T0
y = 1;
y1= 0;
 
a0=(1/P)*int(y,x,-pi,0)+(1/P)*int(y1,x,0,pi)
an=(2/P)*int(y*cos(n*x),x,-pi,0)+(2/P)*int(y1*cos(n*x),x,0,pi)
bn=(2/P)*int(y*sin(n*x),x,-pi,0)+(2/P)*int(y1*sin(n*x),x,0,pi)
F1=symsum(an*cos(n*x)+bn*sin(n*x),n,1,5);
f(x) = (a0)+F1                         %Fourier series representation
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