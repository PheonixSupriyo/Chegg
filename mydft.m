clc;
clear all;
close all;
ft= input('Enter the sequence:');   %Input sequence
Fk = cdft( ft );                 %Function to compute DFT
N = length(ft);                     %Length of sequence xn
k = 0:N-1;
subplot(2,1,1)
stem(k,abs(Fk))                   %Plotting magnitude of DFT
xlabel('k')
ylabel('|X(k)|')
title('Magnitude plot')
subplot(2,1,2)
stem(k,angle(Fk))                 %Plotting angle of DFT
xlabel('k')
ylabel('Angle X(k)')
title('Phase plot')
Fk                      %Command window outputto display computed DFT

fft(ft)
factorial(10)