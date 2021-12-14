
%Ts =0.1 
s=tf('s');
%G = (s+100)/((s^2+12*s+20)*(1+s/1000));   %Open loop transfer function
G1 = 12/(s+3)
G2=14/(s+2)
X = 1/s;
Z1 = c2d(G1,0.8,'matched')
Z2 = c2d(G2,0.8,'matched')
Z = c2d(X,0.8,'matched')
Sy = Z1*Z2*Z

syms z
K= 16.26/(z^3-1.293*z^2+0.3019*z - 0.01832);
iztrans(K)

%bode(G)
%GC = (s+0.87)/(s+4.76);
%K = 2.5;
%sys = G*GC;
%margin(sys)                   %Bode plot with Gm, Pm, Wcg, Wcp
%[Gm,Pm,Wcp,Wcg] = margin(sys) %Command window output with Gm, Pm, Wcg, Wcp

%sys = G*PID
%k=1;
%CLTF = feedback(sys,k)           %Closed loop transfer function uinity feedback 
%step(CLTF)                     %Step response
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