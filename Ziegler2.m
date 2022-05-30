pkg load control
s=tf('s')
Gs=(1)/(s^3+7*s^2+14*s+8) %--Funcion--%
pzmap(Gs)
title("POLOS y CEROS")
figure
rlocus(Gs)
title("RAICES")
K=1  %--PROBAR GANANCIA--%
fun1=series(Gs,K)
ft=feedback(fun1,1)
figure
step(ft)
p=0.5*K
t=(1/1.2)*4.4
fun2=series(Gs,p)
ft1=feedback(fun2,1)
figure
step(ft1)
title("P")
PI=((0.45*(K))*(1+(1/(t*(s)))))
fun3=series(Gs,PI)
ft2=feedback(fun3,1)
figure
step(ft2)
title("PI")
kp=0.6*K
ti=0.5*4.4
td=0.125*4.4
PID=kp*(1)+(1/(ti)*(s)+(td)*(s))
fun4=series(Gs,PID)
ft3=feedback(fun4,1)
figure
step(ft3)
title("PID")

