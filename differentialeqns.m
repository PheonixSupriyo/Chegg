%syms y(t) x(t)
%equations = [diff(y,t) == exp(t)+5*x - 2*diff(x,t), diff(x,t) == 5*exp(t) + x-diff(y,t)];
%S = dsolve(equations);
%y(t) = S.y
%x(t) = S.x

k = [3,4,5,6,7]
for i=1:length(k)
   syms x(t)
   ode = diff(x,t) == 5*t - 3*x/t;    %Diferential Equation
   cond = x(2) == k(i);                 %Initial Condition
   fprintf('For k =')
   disp(k(i))
   x(t) = dsolve(ode,cond);           %Solvinng differential equation
   fprintf('x(t) =')
   disp(x(t))
   ezplot(x(t))                      %Funtion behavior 
   hold on
   fprintf('\n')
end
legend('k = 3','k = 4',' k = 5','k = 6','k = 7')