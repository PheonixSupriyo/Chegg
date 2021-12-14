f = @(t,y) y^2;                 %Differential Equation
F = @(t) 1/(1-t);                         %Solution of ODE  
h=0.05;                                    % step size           
t = 0:h:0.8;                                    
y = zeros(1,length(t));                      
y(1) = 1;                                 % given Inital consition 

n=0.8/0.05;                              %No of iterations
for i = 2:n+1
    y(i) = y(i-1) + h*f(t(i-1),y(i-1));
end

fprintf('    Step number        time        Approximated solution     True solution     Relative Error');
fprintf('\n\n')  
for j = 1:n+1
    k=abs(F(t(j)) - y(j));
    e = k/abs(F(t(j)));
    A(j) = F(t(j));
    fprintf('%10d %20d %20d %20d %17d\n',j-1,t(j) ,y(j) , F(t(j)),e)
      
end
plot(t,A,'o-', t, y, '--')
xlabel('t');
ylabel('y'); 
title('Eulers Method Plot');
legend('Exact solution','Approximated solution')