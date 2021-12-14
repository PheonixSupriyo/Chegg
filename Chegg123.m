
clc; 
clear all;
format long;
fun =@(x)  (x-2)^2*(x-1);
abl=@(x) 3*x^2-10*x + 8;
 %xold = -2;
 %xnew = newtonstep(fun,abl,xold)

 
x0=1;                %Initial value
tol=10^-12;          %Tolerance
maxiter = 50;        %Maximum iterations
[x,iter] = mynewton(fun,abl,x0,tol,maxiter)

fprintf('Difference from exact zero point:\n\n')
fprintf('Iteration number           x                Difference\n')
for j = 1:iter
    fprintf('%10d  %20d   %20d\n',j,x(j),1-x(j))
end
    
 
function xnew = newtonstep(fun,abl,xold)
       xnew = xold - feval(fun,xold)/feval(abl,xold);
end



function [x,iter] = mynewton(fun,abl,x0,tol,maxiter)
x(1) = x0;
iter = maxiter;
for i = 2:maxiter
    x(i) = x(i-1) - feval(fun,x(i-1))/feval(abl,x(i-1));
    if (abs(x(i)-x(i-1))<=tol)
        iter = i;
        break;
    end
end
end
        

