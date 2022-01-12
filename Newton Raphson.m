
f = @(t) 0.05*(cos(5*t)+sin(5*t)-exp(-t/0.2));
df = @(t) 0.05*(-5*sin(5*t)+5*cos(5*t)+5*exp(-t/0.2));
ddf = @(t) 0.05*(-25*cos(5*t)-25*sin(5*t)-25*exp(-t/0.2)); 
N = 1000;
x = zeros(1,1000);   
x(1) = 0;
t = 10^-8;  %Tolerance 10^-8
k=1;
for i=2:N
  x(i) = x(i-1) - df(x(i-1))/ddf(x(i-1));    %Newton's formula
  if (abs(df(x(i))) <= t)    %Stop interation when tolerance reached
      k = i;               % To store the time t taken to converge
      break;
  end
end
x;
fprintf('By Nnewton method, time where Q is maximum is:')
disp(double(x(k)));   
