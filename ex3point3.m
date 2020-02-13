%Intro2 revised for ex3point3
logrmax=log(rmax);
logLight=log(Light);
subplot(3,1,1);
plot(Light, rmax, '+')
axis('equal');
subplot(3,1,2);
plot(logLight, logrmax, '+')
subplot(3,1,3);
plot(Light, rmax, '+')
axis([15 104 1 4])