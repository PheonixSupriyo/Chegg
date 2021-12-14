%x=linspace(-10,10);
%y = 2*cos(20*pi*x) + 3*sin(20*pi*x); % Main function
y = rectangularPulse(x); % Main function
%y2 = diff(f,x)        %y'
%figure   
%fplot(y2,[-50 50])    %Plotting y' 
%xlabel('x')
%ylabel('Derivative of y')
%y3 = diff(y2,x)==0;   % To get the extreme points of y'
%extreme_points = solve(y3,x);   %Extreme points

%extreme_values = subs(y2, x, extreme_points) %Extreme values
%[maxy2, max_x] = max(extreme_values)
%double(extreme_points) %Numeric extreme points
%double(extreme_values) %Numeric extreme values 
%best_location = extreme_points(max_x);
%max_slope=double(max_x)
%best_value = simplify(maxy2, 'steps', 50);
%double(best_value)
p=(rms(y))^2
F = fft(y); 
pow = F.*conj(F);
syms t
c=2*cos(20*pi*t) + 3*sin(20*pi*t)
b=c.*conj(c)
%t=linspace(-10,10)
int(b, 't', -inf, inf)
