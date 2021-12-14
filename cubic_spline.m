f = @(x) atan(1+x.^3);   %Main function
a = [-4:1:4];            %x ranges
y = f(a);                 % f(x) values
fprintf('    x             f(x)');
fprintf('\n\n')
for i = -4:1:4
    fprintf('%5d %20d \n',i,f(i))
      
end


x = -4:4;     
cs = spline(x,[0 y 0]);    %Cubic spline
k = linspace(-4,4,101);  
subplot(2,1,1); plot(x,y,'o',k,ppval(cs,k),'-'); 
xlabel('x')
ylabel('y')
title('Cubic Spline')
legend('points','h(x)')


p2=polyfit(x,y,4);                  % Forming Polynomial of degree 4
y_fit2=polyval(p2,x);               % approximation of f(x)
subplot(2,1,2); plot(x,y,'ro',x,y_fit2);  % Plotting the curve
xlabel('x')
ylabel('y')
title('Curve fitting')
legend('points','g(x)')
y1=ppval(cs,1.2);
fprintf('\n    h(1.2):')
disp(y1)
y2=polyval(p2,1.2);
fprintf('    g(1.2):')
disp(y2) 
y3 = abs(y1-y2);
fprintf('   |h(1.2)-g(1.2)|:')   %h(x1) - g(x1) at x1 = 1.2
disp(y3) 

