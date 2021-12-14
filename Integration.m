f = @(x) sqrt(x);            %Main function 
a = 24;                  % lower limit
b=26;                    % upper limit
n=[4 8 16];              %All n values
syms x
E = int(sqrt(x),[a,b]);
fprintf('\n\nExact integral of f(x): %f\n\n:',E)


% Trapeziodal rule
for i=1:(length(n))
    h = (b-a)/n(i);       %Step size
    I=(f(a)+f(b))*(h/2);
    for j = 1:n(i)-1
        I=I+h*f(a+j*h);    %Integration
    end
    answerTrapezoidal(i) = I; 
end

fprintf('Integration results using Trapezoidal rule: \n')
for k = 1:(length(n))
    fprintf('For n = %d\n', n(k))
    fprintf('Integration of f(x) : %f \n',answerTrapezoidal(k))
    fprintf('Relative Error (Percentage): %f %  ',abs((answerTrapezoidal(k)-E)*100/E))
    fprintf('\n')   
end
    
% Simpsons Rule
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

fprintf('\n\nIntegration results using Simpsons rule: \n')
for k = 1:(length(n))
    fprintf('For n = %d\n', n(k))
    fprintf('Integration of f(x): %f\n',answerS(k))  
    fprintf('Relative Error (Percentage): %f ',abs((answerS(k)-E)*100/E))
    fprintf('\n')   
end

%Gaussian Quadrature integration for  n = 2
x =[5.773502691896257e-01, -5.773502691896257e-01];
c =[9.999999999999998e-01,9.999999999999998e-01];
tildec = (b-a)/2*c;
tildex = (b-a)/2*x + (b+a)/2;
f = exp(tildex).*cos(tildex);
result(1) = sum(tildec.*f);

%Gaussian Quadrature integration for  n = 3

x = [0.7745966692414834, 0, -0.7745966692414834];
c = [0.5555555555555556, 0.8888888888888888, 0.5555555555555556];
tildec = (b-a)/2*c;
tildex = (b-a)/2*x + (b+a)/2;
f = exp(tildex).*cos(tildex);
result(2) = sum(tildec.*f);

fprintf('\n\nIntegration results using Gaussian Quadrature rule: \n')
for k = 1:2
    fprintf('For n = %d\n', n(k))
    fprintf('Integration of f(x) %d\n',result(k))  
end

%Exact value of integration
syms x
E = int(sqrt(x),[a,b]);
fprintf('\n\nExact integration of f(x)%f\n:',E)


