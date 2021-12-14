f = @(x) exp(-x).*cos(pi*x);   %Main function
x= [-0.58,0,0.58];              %Given x values
y=f(x)                         %Corresponding y values
N=length(x);

%lagrange Interpolation
Lpoly=0;
    for i=1:N
        k=1;
        for j=1:N
            if j~=i
                c = poly(x(j))/(x(i)-x(j));
                k = conv(k,c);
            end
        end
        term = k*y(i);
        Lpoly= Lpoly + term;
    end
Lpoly ;           %Polynomial

DiffLpoly = polyder(Lpoly) ;          %Differentiation of polynomial
s=polyval(DiffLpoly,0);              %f(x) value at x = 0
fprintf('Value by Differentiatrion of polynomial : %f\n\n',s);
h = 0.58;                            %step size

result = (f(0+h)-f(0-h))/(2*h);      %Central Difference
fprintf('Value by central difference : %f\n\n',result);

syms z
F = z^2/(z^2-1.5*z+0.5)
iztrans(F)
