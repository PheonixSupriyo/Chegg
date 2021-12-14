
function p = fun(t,y)
p=zeros(size(y));
p(1) = y(2);
p(2) = y(3);
p(3)=((0.05/1.5)*y(3)+(0.2/1.5)*y(1)+4*(cos(10*t)+sin(10*t))/1.5);
end