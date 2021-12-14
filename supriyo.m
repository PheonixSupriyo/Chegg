
f= @(a) exp(-a);

x=[-2 -1 0 1 2];   %x values
y= f(x)          %y values
p2=polyfit(x,y,4); %Interpolation polynomial
y_fit=polyval(p2,0.5) %y value at x = 0 .5
Lpoly=0;
for i=1:length(x)
    k=1;
    for j=1:length(x)
        if j~=i
            c = poly(x(j))/(x(i)-x(j))
            k = conv(k,c);
        end
    end
    term = k*y(i);
    Lpoly= Lpoly + term;
end


n=5;

for i = 1:n
    D(i,1) = y(i);
end

for i = 2:n
   for j = 2:i
       D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
   end
end
D
Npoly=0;
for i=2:length(x)+1
    k=1;
    for j=i:length(x)
      c = poly(-x(j));
      k = conv(k,c);
    end
  
  k=k.*D(7-i,7-i);
  z=length(k);
  k=[zeros(1,5-z),k];
  term = k;
  Npoly= Npoly + term;
end
Npoly   %Newton Polynomial
f(-0.4)
y_fit=polyval(Npoly,-0.4) %y value at x = 0 .5
% for output coefficients
% Quadratic line fitting (order 2)
%x_fit = -2:0.1:2;                       % x values for smooth quadratic curve
%y_fit2=polyval(p2,x_fit);               % y values to fit the curve
%plot(x,y,'ro',x_fit,y_fit2);            % Plottinh the curve
%xlabel('x')
%ylabel('y')
%title('Quadratic line fitting')

