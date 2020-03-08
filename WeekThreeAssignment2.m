%%%%%%%%%%%%%Plotting the distribution of the end points%%%%%%%%%%%

walklength = 700;
walks = 600;
rwalks = rand([2,walklength,walks]);
rwalks = rwalks>0.5;
rwalks = 1 - 2*rwalks;
rwalks = cumsum(rwalks, 2);
xend = rwalks(1,walks,:);
yend = rwalks(2,walks,:);
D = xend.^2 + yend.^2;
%scatter(xend,yend)
%axis([-100 100 -100 100])
title('Endpoints');
avergageD = mean(D)
histogram(D)