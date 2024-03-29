clear
clc

syms t1 t2 t3 x1 x2 x3 y1 y2 y3 xs ys

x1=100*cos(0*pi/4.5);
x2=100*cos(1*pi/4.5);
x3=100*cos(2*pi/4.5);

y1=100*sin(0*pi/4.5);
y2=100*sin(1*pi/4.5);
y3=100*sin(2*pi/4.5);

eq1= cos(t1)==((x3-xs)*(x1-xs)+(y3-ys)*(y1-ys))/((((x3-xs)^2+(y3-ys)^2)^(1/2))*(((x1-xs)^2+(y1-ys)^2)^(1/2)));
eq2= cos(t2)==((x3-xs)*(x2-xs)+(y3-ys)*(y2-ys))/((((x3-xs)^2+(y3-ys)^2)^(1/2))*(((x2-xs)^2+(y2-ys)^2)^(1/2)));
eq3= cos(t3)==((x1-xs)*(x2-xs)+(y1-ys)*(y2-ys))/((((x1-xs)^2+(y1-ys)^2)^(1/2))*(((x2-xs)^2+(y2-ys)^2)^(1/2)));

[xs,ys]=fsolve(eq1,eq2,eq3,xs,ys);

pretty(xs)
pretty(ys)