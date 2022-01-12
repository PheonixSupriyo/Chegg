n=-5:5;
x=dirac(n)
idx=x==Inf;
x(idx) = 1
yflip=fliplr(x);
subplot(3,1,1);
stem(n,x,'r');
title('Original Signal');
xlabel('n');
ylabel('y(n)');
ye = (1/2)*(x+yflip);
subplot(3,1,2);
stem(n,ye,'b');
title('Plot of even part');
xlabel('n');
ylabel('y(n) even');
yo= (1/2)*(x-yflip);
subplot(3,1,3);
stem(n,yo);
title('plot of odd part');
xlabel('n');
ylabel('y(n) odd');

syms x
a = 2;b=6;
E = int(x*sin(x),[a,b]);
fprintf('\n\nExact integration of f(x)%f:',E)
