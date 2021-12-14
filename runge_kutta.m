h1=0.125;                                    % step size
f = @(x) sqrt(2)*sin(x + pi/4);            %Solution of ODE  
x = 0:h1:10;                                    
y = zeros(1,length(x));                      
y(1) = 1;                                 % given Inital consition 
F = @(a,b) -b+2*cos(a);                  % function to be used for the Runge Kutta 4th ODE
for i=1:(length(x)-1)                     % calculation loop
    k_1 = F(x(i),y(i));
    k_2 = F(x(i)+0.5*h1,y(i)+0.5*h1.*k_1);
    k_3 = F((x(i)+0.5*h1),(y(i)+0.5*h1.*k_2));
    k_4 = F((x(i)+h1),(y(i)+k_3.*h1));
    y(i+1) = y(i) + (1/6).*(k_1+2.*k_2+2.*k_3+k_4).*h1;  % main Runge Kutta equation
  
end
h2=0.25 ;                                         % step size  
x2 = 0:h2:10;                                        
y2 = zeros(1,length(x2));                     % Initialization of y with all zeros for 31 x values
y2(1) = 1;                                     % given Inital consition                    
for i=1:(length(x2)-1)                           % calculation loop
    k_1 = F(x2(i),y2(i));
    k_2 = F(x2(i)+0.5*h2,y2(i)+0.5*h2.*k_1);
    k_3 = F((x2(i)+0.5*h2),(y2(i)+0.5*h2.*k_2));
    k_4 = F((x2(i)+h2),(y2(i)+k_3.*h2));
    y2(i+1) = y2(i) + (1/6).*(k_1+2.*k_2+2.*k_3+k_4).*h2;  % main Runge Kutta equation
  
end

fprintf('    x         Y(x) - y2h(x)   Y(x) - yh(x)   Ratio  (yh(x) - y2h(x))/15');
fprintf('\n\n')
for x = 2:2:10
    x1=(x/0.125)+1;
    x2 = x/0.25+1;
    m1 = y2(x2)-f(x);
    m2 = y(x1)-f(x);
    m3 =(1/15)*(y(x1) - y2(x2));
    fprintf('%5d %20d %15d %5d %17d\n',x,m1 ,m2 , ceil(m1/m2),m3)
      
end
%fprintf('    x                      Y(x) - y2h(x)   Ratio   tOr(x,y)\n');
% print the results
%for r=1:5
    %fprintf('%10d%30d\n', m1(r), m2(r));
%end
% Plotting
%tspan = [0,1]; 
%y0=0;
%[p, q] = ode45(F, tspan, y0);   %ode45 integrates from 0 to 3 to obtain the plot
%plot(x,y,'o-', p, q, '--')
%xlabel('x');
%ylabel('y'); 
%title('Runge-Kutta ODE');