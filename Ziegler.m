pkg load control
s=tf('s')
Ft=1/((s+3)*(s+4)*(s+8))
pzmap(Ft)
rlocus(Ft)
figure
step(Ft)
hold on
%---values obtained from step response of sys--%
K=0.06;
L=0.2;
T=0.8-L;

a=K*L/T;
Ti=2*L;
Td=L/2;

Kp=1.2/a;
Ki=Kp/Ti;
Kd=Kp*Td;
cont=pid(Kp,Ki,Kd)
figure
step(feedback(cont*Ft,1))
hold on

controlP = (T)/(L)
controlPIK= 0.9*((T)/(L))
controlPIT= L/(0.3)

controlPIDK=1.2*((T)/(L))
controlPIDT= 2*L
controlPIDTd= 0.5*L
