clc;
clear;

%%Part D::
t=-3:0.01:3;
x= trianglc(t);
%plot(t,x)
N=length(x);
fs_x= fftshift(fft(x,N))*(2*pi/N);
mag=abs(fs_x);
phase=atan(imag(fs_x)./real(fs_x));
%%
%magnitude:
L=length(mag);
f=-length(mag)/2:length(mag)/2-1;
plot(f,mag)
xlim([-length(mag)/2 length(mag)/2])
title('Magnitue of Coefficients of Triangular Wave')
%%
%phase:
plot(f,phase)
xlim([-length(mag)/2 length(mag)/2])

title('Phase of Coefficients of Trianguler Wave')
