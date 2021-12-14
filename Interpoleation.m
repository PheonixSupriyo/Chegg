
clc;
clear all
x=input('Enter x values: ') ;  %x values
y=input('Enter y values: ') ;  %y values   
d = input('Enter the point where interpolation is required: ');
N=length(x);
c=2;
len=0;
for s=2:-1:0
    len = N-s;
    fprintf('\n\nFor data points: %d \n',len)
    
    %lagrange Polynomial
    Lpoly=0;
    for i=1:len
        k=1;
        for j=1:len
            if j~=i
                c = poly(x(j))/(x(i)-x(j));
                k = conv(k,c);
            end
        end
        term = k*y(i);
        Lpoly= Lpoly + term;
    end
    y_fit=polyval(Lpoly,d); %y value at data
    fprintf('Lagranges iterated value: %11.8f \n', y_fit)
  
    
    
    %DIVIDE DIFFERENCE
    n=len;
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
   D;
   fx0 = D(n,n);
   for i = n-1:-1:1
      fx0 = fx0*(d-x(i)) + D(i,i);
   end
   fprintf('Newtons Divide Difference iterated value: %11.8f \n', fx0)
   
end
