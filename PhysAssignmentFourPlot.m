%%%% Physics Assignment Plot %%%%%%

%%% parameters %%%%
R1 = 10;
R2 = 100;
R3 = 1000;
C = 10 * (10^6);
L = 0.001;
vzero = 1;
wzero = 1/((L*C)^(0.5));
t1 = L/R1;
t2 = L/R2;
t3 = L/R3;

%%% axes %%%
xorig = linspace(0,100000000);
x = xorig/wzero;

y1 = (1-(x.^2))./((((1-(x.^2)).^2)+ ((xorig.*t1).^2)).^0.5)
y2 = (1-(x.^2))./((((1-(x.^2)).^2)+ ((xorig.*t2).^2)).^0.5)
y3 = (1-(x.^2))./((((1-(x.^2)).^2)+ ((xorig.*t3).^2)).^0.5)
plot(x,y1,x,y2,x,y3)