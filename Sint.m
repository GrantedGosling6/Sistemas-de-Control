kp=2
ti=10
td=7
PID=kp*(1)+(1/(ti)*(s)+(td)*(s))
fun4=series(Gs,PID)
ft3=feedback(fun4,1)
figure
step(ft3)
title("SINTONIZACION")

