num = [1 -7];
den = [1 6 8];
G = tf(num,den)
% %% code number one
[MAG, PHASE] = bode(G);
PHASE = PHASE(1,:);
MAG = MAG(1,:);
figure
polar(PHASE*pi/180, MAG)
hold on
polar(-PHASE*pi/180, MAG)
hold off
figure
nyquist(G)