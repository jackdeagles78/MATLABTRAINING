% Assignment 

time = 0:0.1:2;
tau = 1;
A = 1;
V = A*(exp(-time/tau)-1+(time/tau));
plot(time, V, 'g'), xlabel('Time'), ylabel('V'), title('Biology')