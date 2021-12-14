syms t
sig=2*sin(pi*t+pi/4).*rectangularPulse((t-6)/8)
b=sig.*conj(sig);
l=-inf;
u=inf;
int(b, 't', l, u)
p=(rms(y))^2

t=linspace(0,15);
sig=rectangularPulse((t-6)/8);
plot(t,sig)