
n = 2:30;
x = ((0.5).^n)./0.25   %x(n)
n = -2:20;
h=1.*n.^0;            %h(n)

% convolution
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end

stem(Y, '-ro');
ylabel('y(n)'); xlabel('--->n'); 
grid on;
title('Convolution of x(n) and h(n) without conv function');