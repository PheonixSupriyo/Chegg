fun = @(t) (1+t.^2)./(1+t + sqrt(sin(t)));
x = [0:0.2:1.6];    % All x values with step size 0.2
y = zeros(1,length(x));
for i=1:length(x);
    y(i) = integral(fun,0,x(i));   
end
fprintf('All x values;');
disp(x) ;
fprintf('All f(x) values;');
disp(y) ;                       %f(x) values display
Polynomial=polyfit(x,y,3);            %Interpolation polynomial of degree 3
y_fit=polyval(Polynomial,1.15) ;     %value of polynomial at x = 1.15
