C2=polyfit(Light, rmax, 2);
yhat=polyval(C,xvals);
yhat2=polyval(C2,xvals);
plot(Light, rmax, '+', xvals, yhat, xvals, yhat2)