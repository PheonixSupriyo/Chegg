function b=finalvalueplot(a)
for i=1:length(a)   
y0=[0,a(i)];
tspan=0:0.01:1;
[t,y]=ode45('fun',tspan,y0);
b(i)=y(length(tspan),1);
plot(t,y(:,1),'DisplayName',sprintf('a=%f',a(i)))
hold on
%plot(t,y(:,2))
%hold off
end
end

