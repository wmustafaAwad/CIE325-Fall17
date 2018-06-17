clc;
clear;

%%Part E::
t=-3:0.05:3;
m=sin(5*pi.*t)./(pi.*t);
m(ceil(length(m)/2))=5; %
%%
%Plot the sinc:
plot(t,m)
title('sinc times 5')

%%
%plot sinc times cos:
r=m.*cos(30*pi.*t);
plot(t,r)
title('sinc*cos times 5')
%%
%fft of m:
N=length(m);
FT_M= fftshift(fft(m,N))*(2*pi/N);
f=-length(FT_M)/2:length(FT_M)/2-1;
plot(f,abs(FT_M))
xlim([-60 60])


title('Fourier Tranform of sinc times 5')

%%
%fft of r:
N=length(r);
FT_M= fftshift(fft(r,N))*(2*pi/N);
plot(f,abs(FT_M))
xlim([-60 60])
title('Fourier Tranform of sinc*cos times 5')
