function Fk =cdft( ft)          %Function
                      %Computing DFT
N = length(ft);                        
f = [f zeros(1,0)];
for k = 0:N-1
   for n =0 : N-1
       Wn = exp(-j*2*pi*k*n/N);     %Calculating twiddle factor for DFT
       x1(k+1,n+1)=Wn;
   end
end