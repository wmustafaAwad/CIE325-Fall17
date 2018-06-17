%%Part A:

%b)
%%
x=-5:0.05:5;
%rect.m:
y=rect(-5:0.05:5);
plot(x,y)
title('Plot of rect from -5 to 5');

%%
%triangl.m:
y=triangl(-5:0.05:5);
plot(x,y)
title('Plot of triangl from -5 to 5')


%%
%ustep.m:
y=ustep(-5:0.05:5);
plot(x,y)
title('Plot of ustep from -5 to 5')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Part c:

%%
y=triangl2(x);
plot(x,y)
title('Plot of a triangle, of height 2, base from -3 to 3, from -5 to 5')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%part d:
%%

y1=exp(-3.*x);
y3=ustep(x+2);
y=y1.*sin((8/5).*pi.*x).*y3;
xlim([-4 3])
plot(x,y)
title('Plot of exp*sin*u')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%END OF I
