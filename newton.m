
f = @(t) 0.05*(cos(5*t)+sin(5*t)-exp(-t/0.2)) - 0.075;
df = @(t) 0.05*(-5*sin(5*t)+5*cos(5*t)+5*exp(-t/0.2)); %df/dt
t = 0;
N = 100;
x = zeros(1,100);   
x(1) = 0;
t = 10^-2;  %Tolerance 10^-8
k=1;
for i=2:N
  x(i) = x(i-1) - f(x(i-1))/df(x(i-1));    %Newton's formula
  if (abs(f(x(i))) <= t)    %Stop interation when tolerance reached
      k = i;               % To store the time t taken to converge
      break;
  end
end
x;
fprintf('Time where Q = 0.075 is:')
disp(double(x(k)));   %Display the time where t = 0.075 approx
f(0.2077)+0.075

syms f t
f = 0.05*(cos(5*t)+sin(5*t)-exp(-t/0.2));
f2 = diff(f,t) ==0
t = solve(f2,t)
r = max(t)
    