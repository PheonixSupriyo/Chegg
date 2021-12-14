
%a=-15:1:15;
%m=fzero(finalvalue
%b=finalvalue(a);
%b
%function b=finalvalue(a)
%for i=1:length(a)   
x0=[0.1,0,0];       %Initial Conditions
tspan=0:0.01:5;             %range 
[t,x]=ode45('fun',tspan,x0);    
x
plot(t,x)
xlabel('time (t)')
ylabel('x')
legend('Position x(t)','Velocity (x''(t))','Acceleration (x''''(t))')
%b(i)=y(length(tspan),1);

%hold on
%plot(t,y(:,2))
%hold off
%end
%end
%
