function [Npoly D] = divdiff(x,y)   % y = f(x)

n=length(x);        

%Forming Newton Divided difference Table
for i = 1:n
    D(i,1) = y(i);
end

for i = 2:n
   for j = 2:i
       D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
   end
end

%Forming Newton interpolating Polynomial
Npoly=0;
for i=1:length(x)
    k=1;
    for j=1:length(x)-i
      c = poly(x(j));
      k = conv(k,c);
    end
   k=k.*D(length(x)+1-i,length(x)+1-i);
   z=length(k);
   k=[zeros(1,n-z),k];
   term = k;
   Npoly= Npoly + term;
end
Npoly ;  %Newton Polynomial 

end
