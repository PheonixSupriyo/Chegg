x = 0:0.5:10;                                         % total 31 values of x from 0 to 3 with step size h
y = zeros(1,length(x));                       % Initialization of y with all zeros for 31 x values
y(1) = 1;  
h1=1
% given Inital consition 
F = @(a,b) -b+2*cos(a);                    % function to be used for the Runge Kutta 4th ODE
for i=1:(length(x)-1)                              % calculation loop
    k_1 = F(x(i),y(i))
    k_2 = F(x(i)+0.5*h1,y(i)+0.5*h1.*k_1)
    k_3 = F((x(i)+0.5*h1),(y(i)+0.5*h1.*k_2))
    k_4 = F((x(i)+h1),(y(i)+k_3.*h1))
    y(i+1) = y(i) + (1/6).*(k_1+2.*k_2+2.*k_3+k_4).*h1;  % main Runge Kutta equation
  
end