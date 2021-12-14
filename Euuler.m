clc
clear all
f = @(t,y) -2*y;                %Differential Equation
F = @(t) 2*exp(-2*t);             % Exact Solution of ODE  
N = [0.001 0.01 0.1 1 10 100];
FE = zeros(1,length(N)); 

%Forward Euler Method
for j = 1:length(N)
    n=N(j);
    h = 1/n;
    t = 0:h:1; 
    y = zeros(1,length(t)); 
    y(1) = 1;
    e=0;
    for i = 2:n+1
        y(i) = y(i-1) + h*f(t(i-1),y(i-1));
        if(abs(y(i)-F(t(i)))>=e)
            e = abs(y(i)-F(t(i)));
        end
    end
    FE(j) = e;  
end

%Backward Euler Method
BE = zeros(1,length(N)); 
for j = 1:length(N)
    n=N(j);
    h = 1/n;
    t = 0:h:1; 
    y = zeros(1,length(t)); 
    y(1) = 1;
    e=0;
    for i = 2:n+1
        y(i) = y(i-1)/(1+2*h);
        if(abs(y(i)-F(t(i)))>=e)
            e = abs(y(i)-F(t(i)));
        end
    end
    BE(j) = e;  
end

fprintf('         N                   h             Maximum Error Backward Euler     ');
fprintf('\n\n')  
for v = 1:length(N)
    fprintf('%10f %25f %25f\n',N(v),1/N(v),BE(v))     
end