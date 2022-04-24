close all
clear all
clc
fc=200;
fs=1000;
t=0:1/fs:10;
x=sinc(t).*cos(2*pi*fc*t);
q=hilbert(x);
w=q*i;
d=w+x;
r=d.*exp(i*2*pi*fc*t);
subplot(411)
plot(t,x)
[a N]=size(x);
f=-fs/2:fs/(N-1):fs/2;
z=fftshift(fft(x));
subplot(412);
plot(f,abs(z))
subplot(413)
plot(t,abs(r))
Z=fftshift(fft(r));
subplot(414)
plot(f,abs(Z))

