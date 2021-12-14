clc
clear all
syms x;                               
F = sin(0.35*x)-(1/(0.35+x))   %Main function 
z=int(F,x,1,3)
A=double(z)                   %Exact Integration value
f = @(x) sin(0.35*x)-(1/(0.35+x));   %Main function 
a = 1;                  
b=3;
n=[16 32 64 128 256 512]                  %All n values

%Composite Simpson's Rule
for i=1:(length(n))
    h = (b-a)/n(i);
    I=(f(a)+f(b));
    for j = 1:2:n(i)-1
        I=I+4*f(a+j*h);    
    end
    for k = 2:2:n(i)-2
        I=I+ 2*f(a+k*h);    
    end
    answerS(i) = I*(h/3);
  
end
answerS

%Composite Corrected Trapeziodal rule
for i=1:(length(n))
    h = (b-a)/n(i);
    I=(f(a)+f(b))*(h/2);
    for j = 1:n(i)-1
        I=I+h*f(a+j*h);    
    end
    f1 = (-3*f(a)+4*f(a+h)-f(a+2*h))/(2*h);
    f2=(-3*f(b)-4*f(b-h)+f(b-2*h))/(2*h);
    I = I + (h*h)*(f1-f2)/12;
    answerT(i) = I;
  
end
answerT

%Check for errors
%Approximation
%A = 0.021159102; 
"Percentage Errors_in_both_rules for each n "
for i=1:(length(n))
   for_n=n(i)
   abs(A-answerS(i))
  % Trapezoidal_error("%")=abs(A-answerT(i))*100/A  
end
