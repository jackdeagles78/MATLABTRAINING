%%% Generating random values for an array of 100 numbers
walklength = 500;
xlist = rand([walklength,1]);
stepx = xlist>0.5;
stepx = 1 - 2*stepx;
ylist = rand([walklength,1]);
stepy = ylist>0.5;
stepy = 1 - 2*stepy;
toplot = [stepx'; stepy'];
toplot = cumsum(toplot, 2);

% Now we actually plot it 

plot(toplot(1,:),toplot(2,:))
axis equal, xlim([-30,30]), ylim([-30,30]);
title(['Random walk 1'])


