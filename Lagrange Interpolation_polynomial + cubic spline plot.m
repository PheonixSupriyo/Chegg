
%f= @(a) exp(-a);
clc;
clear all
x=[0 0.1 0.3 0.6 1];                %x values
y=[-6 -5.89483 -5.65014 -5.17788 -4.28172]  ;        %y values

 
                %Interpolation polynomial
%y_fit=polyval(p2,0.5); %y value at x = 0 .5

%Lagrange interpolating polynomial
Lpoly=0;
for i=1:length(x)
    k=1;
    for j=1:length(x)
        if j~=i
            c = poly(x(j))/(x(i)-x(j));
            k = conv(k,c);
        end
    end
    term = k*y(i);
    Lpoly= Lpoly + term;
end
fprintf('Interpolating polynomial coefficients: \n')
Lpoly  
% y_fit=polyval(Lpoly,-1) %y value at x = 0 .5
%f(-0.4);

% for output coefficients
% Quadratic line fitting (order 2)
%p2=polyfit(x,y,3) 
x_fit =linspace(0,1.0,100);                 % x values for smooth curve
y_fit2=polyval(Lpoly,x_fit);               % y values to fit the curve
plot(x,y,'r*',x_fit,y_fit2);               % Plotting the curve
grid on
xlabel('x')
 ylabel('f(x)')
 title('Lagrange Interpolating polynomial')
% hold on


Cubic spline
 cs=spline(x,y,x_fit);
 plot(x_fit,cs,'b'); 
 xlabel('x')
 ylabel('y')
title('Interpolating polynomial and Cubic Spline')
 legend('points','Interpolating polynomial')



