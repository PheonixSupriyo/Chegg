
syms t s
assume(a > 0);
k=2*heaviside(t-2)-2*heaviside(t-4);  %f(t) representation
F(s)=laplace(k)                 %laplace transform of f(t)
%G(s) = X(s)*1/(1-exp(-s*T))   %Laplace transform of g(t)


t = 0:0.001:10;
x = (square(pi*t)+1)/2;
plot(t,x)
xlabel('t')
ylabel('g(t)')
