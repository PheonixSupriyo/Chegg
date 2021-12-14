format long
f = @(x) 0.84885406+31.51924706*x-137.6673126*x^2+240.55831238*x^3-171.45245361*x^4+41.9506607*x^5;        %Main function 
a = 0;
b = 1;

% Trapeziodal rule
h = 0.001;     %Step size
n=(b-a)/h;      %No if iterations
I=(f(a)+f(b))*(h/2);
for j = 1:n-1
    I=I+h*f(a+j*h);    %Integration
end

fprintf('Integration of f(x) using Trapezoidal rule =')
disp(I)
fprintf('\n')  

%Exact Integration Code
syms x;
F = 0.84885406+31.51924706*x-137.6673126*x^2+240.55831238*x^3-171.45245361*x^4+41.9506607*x^5;
Exact = int(F,x,0,1);
M=double(Exact);        %Exact integration value

fprintf('Exact integrated value of f(x) =')
disp(M)
