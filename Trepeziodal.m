f = @(x) cos(x).*cos(x);   %Main function 
a = -0.25;                              %x=2 lower limit
b=0.25;                             %x=2.99 upper limit
n=[2 3];                      %All n values

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
    fprintf('For n =')
    disp(n(k))
    fprintf('Integration of f(x) =')
    disp(answerTrapezoidal(k))
    fprintf('\n')   
end
    
    

