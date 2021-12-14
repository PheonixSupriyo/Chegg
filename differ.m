syms x
f = 0.5*x*x*x -0.1*x*x + 0.8 * x -0.7  %main Function
f1 =diff(f);
f2 =diff(f1);
f3 =diff(f2);
F = @(x) 0.5*x*x*x -0.1*x*x + 0.8 * x -0.7;  
F1 = @(x) 1.5*x*x-0.2*x+0.8;         %First Derivative
F2 = @(x) 3*x-0.2;                   %second Derivative
F3 = @(x) 3;                         %Third Derivative
h = 1 - 0.8;                         %Step
A0  = F(0.8)                         %First Approximation
E0 = (F(1) - A0)*100/F(1)            %True percentage relative error in percentage
A1 = A0 + F1(0.8)*h                  %First Approximation
E1 = (F(1) - A1)*100/F(1)            %True percentage relative error in percentage
A2 = A1 + F2(0.8)*h*h/factorial(2)   %First Approximation
E2 = (F(1) - A2)*100/F(1)            %True percentage relative error in percentage
A3 = A2 + F3(0.8)*h^3/factorial(3)   %First Approximation
E3 = (F(1) - A3)*100/F(1)            %True percentage relative error in percentage


