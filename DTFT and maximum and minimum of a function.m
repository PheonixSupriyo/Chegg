clc;
clear all;
close all;
h= (1/3)*[1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0];               %Input sequence
Fk = cdft( h );                 %Function to compute DFT
N = length(h);                     %Length of sequence xn
k = 0:N-1;
subplot(2,1,1)
stem(k,abs(Fk),'b','linewidth',2)                   %Plotting magnitude of DFT
xlabel('k')
grid on
ylabel('|X(k)|')
title('Magnitude plot of DFT')

fprintf('DFT of h(n) : \n')
Fk                     %Command window output to display computed DFT

[H, W] = freqz(h,1,100);
subplot(2,1,2)
plot(W,abs(H),'r','linewidth',2)
grid on;
title('Magnitude of H(jw)')
xlabel('w')

clear all
fun = @(x) x + sin(2*x);
min=fminbnd(fun,-5,5);
fprintf('The minimum of the function in interval(-5,5) occurs at x =  %f\n',min);
fprintf('The minimum value of the function over the interval (-5,5):  %f\n\n',fun(min));


syms x
f = sin(2*x)+x;
f2 = diff(f,x)==0;
ep = solve(f2,x);
ev = subs(f, x, ep);
[maxX, maxidx] = max(ev);
mx = ep(maxidx);
mm = simplify(maxX, 'steps', 50);
m=double(mm);
fprintf('The maximum of the function in interval(-5,5) occurs at x =  %f\n',double(mx));
fprintf('The maximum value of the function over the interval (-5,5):  %f\n\n',m);
