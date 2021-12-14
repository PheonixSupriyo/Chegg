x = [ 1984,1994,2004,2014]
y=[18354,25502,31875,37424]
p2=polyfit(x,y,3);             %Polynomial of degree 3
a = p2(1);
fprintf('a = %f\n',a)
b = p2(2);
fprintf('b = %f\n',b)
c = p2(3); 
fprintf('c = %f\n',c)
d = p2(4);
fprintf('d = %f\n',d)

A1=polyval(p2,2000);  %Amount at 2000
fprintf('Amount in 2000 : = %f\n',A1)
A2=polyval(p2,2024);  %Amount at 2024
fprintf('Amount in 2024 : = %f\n',A2)

%x_fit = -2:0.1:0;     
%y_fit2=polyval(p2,x_fit);               % y values to fit the curve

%(x,y,'ro',x_fit,y_fit2);            % Plotting the curve
%xlabel('x')
%ylabel('y')
%title('Curve fitting')
