%Assignment 1

time = 0:0.1:10;
tau1 = 3;
tau2 = 12;
tau3 = 9;
V1 = 1-exp(-time/tau1);
V2 = 1-exp(-time/tau2);
V3 = 1-exp(-time/tau3);
plot(time, V1, time, V2, time, V3)
xlabel('Time');
ylabel('V');
