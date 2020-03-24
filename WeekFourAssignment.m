%%%% Making particles move in a universe %%%%%%

%%Declaring the relevant parameters%%
universelength = 500;
kicks = 10000;
particles = 500;

%%initializing the relevant matrices%%
f = zeros(kicks, particles);
x = zeros(kicks, particles);

%%setting the relevant first positions %%
f(1,:) = universelength*rand(1,particles);
f(2:end,:) = randn(kicks-1,particles);

%%x will be assigned to the cumulative sum of the array - effectively 
%representing each particles position after each kick
x = mod(cumsum(f),universelength);

%now we create the image. Effectively, we want to view the world flipped 
% 90 degrees, and then time will span out horizontally. For this reason ,
% we initialize I as the transpose!

I = zeros(particles, kicks);
x = ceil(x);

for i=[1:kicks]
    I(:,i)= hist(x(i,:),particles);
end

figure
imshow(I(:,4000:5000),[]);
xlabel('Time'),ylabel('Position');

%Variance calculations

%We want to go down each column of the cumulatively summed matrix,
%and take the variance of that collection of progressive positions

variance = zeros(1,particles);
for item = [1:particles]
    variance(1,item) = var(x(:,item));
end

% now we want the average value of those variances

averagevariance = mean(variance)





