
%f= @(a) exp(-a);
clc;
clear all
x=[-5 -2 0 1 3];   %x values
y=[5 10 -1 2 1]          %y values
p2=polyfit(x,y,4) %Interpolation polynomial
y_fit=polyval(p2,0.5); %y value at x = 0 .5
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
Lpoly
y_fit=polyval(Lpoly,-1) %y value at x = 0 .5


n=5;

for i = 1:n
    A(i,1) = y(i);
end

for i = 2:n
   for j = 2:i
       A(i,j)=(A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-j+1));
   end
end
A;
Npoly=0;
for i=2:length(x)+1
    k=1;
    for j=i:length(x)
      c = poly(-x(j));
      k = conv(k,c);
    end
  
  k=k.*A(7-i,7-i);
  z=length(k);
  k=[zeros(1,5-z),k];
  term = k;
  Npoly= Npoly + term;
end
Npoly   %Newton Polynomial
%f(-0.4);
y_fit=polyval(Npoly,-1) %y value at x = 0 .5
% for output coefficients
% Quadratic line fitting (order 2)
%x_fit = -2:0.1:2;                       % x values for smooth quadratic curve
%y_fit2=polyval(p2,x_fit);               % y values to fit the curve
%plot(x,y,'ro',x_fit,y_fit2);            % Plottinh the curve
%xlabel('x')
%ylabel('y')
%title('Quadratic line fitting')
 % Newton's divided difference
 % Find the approximate value of f(1.5) from 
 % (x,y)= (0,1), (1,e), (2,e^2) & (3,e^3). 
 

 x0 = -1;
 
 n = size(x,1);
 if n == 1
    n = size(x,2);
 end

 for i = 1:n
    D(i,1) = y(i);
 end

 for i = 2:n
    for j = 2:i
       D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
    end
 end
D
 fx0 = D(n,n);
 for i = n-1:-1:1
    fx0 = fx0*(x0-x(i)) + D(i,i);
 end
fprintf('Newtons iterated value: %11.8f \n', fx0)

