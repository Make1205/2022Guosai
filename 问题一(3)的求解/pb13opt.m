clear,clc;
format long
syms dt1 dt2 dt3 dt4 dt5 dt6 dt7 dt8 dt9

dt=sym([dt1,dt2,dt3,dt4,dt5,dt6,dt7,dt8,dt9]);
tt=sym([0, 40.10, 80.21, 119.75, 159.86, 199.96, 240.07, 280.17, 320.28]);
ro=sym([100, 98, 112, 105, 98, 112, 105, 98, 112]);
ta=sym(tt/180*pi);

tb=double(ta);

A=zeros(9,9);
B=zeros(9,1);

dis=sym([]);
r=sym(100.0);
c=sym([]);
init=zeros(1,9);

for i=1:9
    dis(i)=(r^2+ro(i)^2-2*ro(i)*r*cos(dt(i)))^(1/2);
    
end

subj=sum(dis);

for i=2:9
    c(i)=(dt(i-1)-dt(i)-((tt(i)-tt(i-1))+40)*180/pi);
    A(i,i-1)=1;
    A(i,i)=-1;
    B(i,1)=ta(i)-ta(i-1)-40/180*pi;
end

A(1,1)=-1;
A(1,9)=1;
B(1)=ta(1)-ta(9)+2*pi-40/180*pi;
c(1)=dt(9)-dt(1)-((360-tt(9))+40)/180*pi;
c=reshape(c,9,1);

subj=sum(dis);



[dt,fval]=fmincon(@fun1,init,[],[],A,B);
dt/pi*180

% dt/pi*360

% dt1,dt2,dt3,dt4,dt5,dt6,dt7,dt8,dt9
