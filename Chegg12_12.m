odeFun = @(t, y) [y(2);
                  y(3);
                  ((0.05/1.5)*y(3)+(0.2/1.5)*y(1)+4*(cos(10*t)+sin(10*t))/1.5)];
              
tspan = 0:0.01:5;
ic = [0.1; 0; 0];
[t, y] = ode45(odeFun, tspan, ic);
y
plot(t, y);