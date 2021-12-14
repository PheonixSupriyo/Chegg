clc
clear all
format long g
f = @(x) x^2-exp(x)/x-2;        %Main function
df = @(x) 2*x-(x*exp(x)-exp(x))/x^2;      %Differentiation of main function
x0= input('enter inital guess of x:');   %Input sequence
%x0 = 1;  %Initial guess
%^y0= input('enter inital guess of y:');
%maxiter=40;
N = 1000000; 
t = 10^(-8);  %Tolerance 10^-8
x(1) = x0; % Set initial guess
flag=0;
for i=2:N
  x(i) = x(i-1) - f(x(i-1))/df(x(i-1)) %Newton's formula
  if (abs(x(i)-x(i-1)) <= t)    %Stop interation when convergence reached
      fprintf('The Converged value upto 8 decimal places:')
      x(i)
      k = i               % To store the number of iterations taken to converge
      break;
  end
end

%x
%disp(double(x(k)));   %Display the converged value
%plot(0:k - 1,x(1:k),'o-')     %Plotting graph to see convergence 
%title('Newton Raphson')
%xlabel('No of iterations taken till convergence(n)')
%ylabel('x')
syms x
x = linspace(5,7)
f = exp(x);
plot(x,f)
