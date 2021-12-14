%F = 0:0.01:10; 
%H=(0.2)./(1-0.8*exp(-j*2*pi*F));
%plot(F, abs(H))
%title('Magnitude plot')
%xlabel('F')
Fs = 100
Ts=1/Fs
n = -20:1:20;
x = cos(100.*n);
stem(n,x)
%F1=symsum((cos(n)),n,0,3)
F1=symsum((4.*pi.*cos(n)./(pi*(2*n+1).^2)),n,0,20)


%h=0.2.*(0.8).^n.*Ts      
%y=conv(x,h)           %Convolution

%k=[-20 : 1 : 20]
%m=dirac(k)
%idx = m == inf
%m(idx) = 1
%y =-2*10^5.*sinc(0.8.*k) + m
%stem(k,m) %Plotting signal after convolution.
%hold on
%stem(k,y)
%xlabel('n')
%ylabel('h(n)')
%title('Impulse Response of HPF')