walklength = 500;
% step1 is an array of random binary digits. The 1st row corresponds to steps
% in the x-direction and the 2nd row to steps in the y-direction.
step1 = rand(2,walklength) > 0.5; % The entries in step1 here are 0's and 1's.
step1 = 1 - 2*step1; % This converts the 0's and 1's to 1's and -1's respectively.
rwalk1 = cumsum(step1,2); % Perform a cumulative sum of the x and y steps to create a
%random walk.
rwalk1
% Plot the random walk.
plot(rwalk1(1,:),rwalk1(2,:))
axis equal, xlim([-30,30]), ylim([-30,30]);
title(['2-dimensional random walk with ', num2str(walklength), ' steps of size 1']);
xlabel(['x']), ylabel(['y']);
