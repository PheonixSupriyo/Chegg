%syms s
%Ts =0.1 
s=tf('s')
H = 1/(s^3*(0.0279*s+1));   
rlocus(H)
%sys = G*PID
%K=1;
%CLTF = feedback(sys,K)           %Closed loop transfer function inity feedback 
%step(G)
%nyquist(G)
%num=[1];              %Numerator of open loop transfer function 
%den=[50 40 10];             %Denominator open loop transfer function 
%
%[r,p,k] = residue(num,den)   % To get the poles of CLTF
%H=tf(num,den)
%pzmap(H)                % Plotting poles in s-plane
%bode(H)              %Bode Plot
 %asymp(H) 
%zplane(G)
%isstable(sys)                 %To check stability of the system
%step(sys)                     %Step response
%figure
%subplot(311), impulse(sys);   % Impulse reponse
%subplot(312), step(sys);      % Step Response
%subplot(313), step(sys / s);  % Ramp response
%margin(G)                   %Bode plot with Gm, Pm, Wcg, Wcp
%[Gm,Pm,Wcg,Wcp] = margin(G) %Command window output with Gm, Pm, Wcg, Wcp
%isstable(sys)                 %To check stability of the system
%Hc = d2c(G)   
%damp(Hc)
%[w,zeta,p] = damp(Hc)
%Denominator of T(s)
%G = tf(num,den)         %Forming TF in 's' domain

%rlocus(sys)
%[r,p,k] = residue(num,den)   % To get the poles of CLTF
%Kp=dcgain(G)            %Open Loop DC gain for TF
%ess=1/(1+Kp)            % steady state error for step input


%num=[1 5];                    %Numerator of open loop transfer function 
%den=[1 7 18 20 8];             %Denominator open loop transfer function 
%G =tf(num, den)              %Forming transfer function
%GC=tf(n, d)  
%margin(G)
%[Gm,Pm,Wcg,Wcp] = margin(G) %Command window output with Gm, Pm, Wcg, Wcp
%rlocus(G)
%[r,p,k] = residue(num,den)   % To get the poles of CLTF
%H = tf([0.007024,0.006571],[1,-1.812,0.8253],0.1)
%step(H)
%Hc = d2c(H)
%step(Hc)
%[r,p,k] = residue([0.007024,0.006571],[1,-1.812,0.8253]) 
%pzmap(H)
%[poles, zeros] = pzmap(H)
%axis([-1 1 -1 1])
%zgrid