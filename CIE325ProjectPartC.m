clc;
clear;

%%Part C
t=0:0.05:6;
h=0:0.05:3;
tplot=-15:0.05:15;
z=exp(abs(t)./-3).*sin((4*pi).*t).*(ustep(t)-ustep(t-5));
zp= [z z z z z z z z z z];
zplot=zp(length(h)+3:length(tplot)+length(h)+2);
plot(tplot,zplot)
title('z(t)')
%%
%Caculations:
t=0:0.00001:6; %Value doesn't change fot delta(t) < 0.0001
z=exp(abs(t)./-3).*sin((4*pi).*t).*(ustep(t)-ustep(t-5));
EnergyCalc= cumsum((z.^2).*0.00001);
Energy=EnergyCalc(end)
%Energy per Period, since periodic signals have infinte Energy.
Power= Energy/(6+0.05)

