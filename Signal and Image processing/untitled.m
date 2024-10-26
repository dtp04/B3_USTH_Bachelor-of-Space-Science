clear;
clc;
f =20;
t=0:1000;
a = 1 ;
x1 = a*cos(2*pi*f*t);
x2 = a*cos(2*pi*3*f*t);
x = x1 +x2;

freqz(x1)
figure
freqz(x2)
figure
freqz(x)