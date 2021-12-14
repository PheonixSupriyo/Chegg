clc
clear all
%format short 
%a=-15:1:15;
%b=finalvalue(a);

%fprintf('value of b corresponding to a:\n\n')
%fprintf('    a       b = finalvalue(a)   \n')
%for i=1:length(b)
 %   fprintf('%5d  %17f\n',a(i),b(i))
%end
f=@finalvalue;
n=1;
for i=-15:15    
temp=fzero(f,i);
m(n)=round(temp,4);
n=n+1;
end
fprintf('Five solutions of a such that finalvalue(a) = 0 are :\n')
a=unique(m)
finalvalueplot(a);
xlabel('t')
ylabel('v(t)')
legend
title('Plot of v(t) corresponding to a values')