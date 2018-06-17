clc;
clear;

%%Part B
%%
told= -5:0.05:5;
y=exp(-abs(told)/5).*(ustep(told+1)-ustep(told-3));
subplot(2,2,1)
plot(told,y)
title('y(t)')
%a:
%%
t1= told.*(1/3);
subplot(2,2,2)
plot(t1,y)
xlim([told(1) told(end)])
title('y1(t)= y(3*t)')


%%
t2= told-2;
subplot(2,2,3)
plot(t2,y)
xlim([told(1) told(end)])
title('y1(t)= y(t+2)')

%%
t3= (told-4)./-2;
subplot(2,2,4)
plot(t3,y)
xlim([told(1) told(end)])
title('y1(t)= y(4-2*t)')
