%G(s)=2(s+1)/(s(s+2)(s+3))
clear all 
G1=tf([2],[1,3]);
G2=tf([3],[1,2]);
G=G1*G2 
H=1 
sys=feedback(G,H) 
controlSystemDesigner(sys)