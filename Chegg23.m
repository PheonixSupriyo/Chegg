x1 = 0:0.001:pi;
y1=1-exp(-x1);
x2 = pi:0.001:2*pi;
y2=zeros(size(x2));
x3 = 2*pi:0.001:3*pi;
y3=1-exp(-x1);
x4 =3*pi:0.001:4*pi;
y4=zeros(size(x4));
x =[x1 x2 x3 x4];
y = [y1 y2 y3 y4];
plot(x,y,'.-')
xlabel('x')
ylabel('f(x)')
title('Graphical representation of f(x) ')
