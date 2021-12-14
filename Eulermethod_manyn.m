f = @(t,y) y^2;                 %Differential Equation
F = @(t) 1/(1-t); 
E = zeros(1,3); 
A = zeros(1,3); 
T = zeros(1,3); 
Z = zeros(1,3); 
H=[0.01 0.001 0.0001];
c=1;
E0 = 1;

for N=1:3
    h = H(N);  % step size           
    t = 0:h:0.99; 
    y = zeros(1,length(t)); 
    W = zeros(1,length(t)); 
    y(1) = 1;                              % given Inital consition    
    n=0.99/h;                               %No of iterations
    for i = 2:n+1
         y(i) = y(i-1) + h*f(t(i-1),y(i-1));    
    end
    for q = 1:n+1
         W(q) = F(t(q)); 
    end
    subplot(3,1,N)
    plot(t,W,'o-', t, y, '--')
    xlabel('t');
    ylabel('y'); 
    title('Eulers Method Plot');
    legend('Exact solution','Approximated solution')
    K=abs(F(t(i))-y(i));
    eI = K/abs(F(t(i)));
    Z(c)=t(i);
    T(c) = F(t(i));
    A(c) = y(i);
    E(c) = eI;
    E0 = eI;
    c=c+1;
end
fprintf('    Step number    Final time        Approximated solution     True solution     Relative Error');
fprintf('\n\n')  
for j = 1:3
    fprintf('%10d %20d %20d %20d %17d\n',j,Z(j) ,A(j) , T(j),E(j))
      
end