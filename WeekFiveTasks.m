%%%%%% WEEK 5 TASKS %%%%%%%%%

% Now we apply what we learnt in the last block to what we just learned %

% First let us use the image we generated last week % 

picture = I(:,4000:5000);

% now let us use fspecial to create a required mask
% we want a strip of 5 time units (or pixels) to go through and 
% compute the avergae of what is around it !

timeinterval = 5;
H = fspecial('average', [1 timeinterval]);

% we then use imfilter to perform the convolution
timeaveragedpicture = imfilter(picture,H);

co=[0:255]/256; 
colormap([co;co;co]');


H2 = fspecial('gaussian', [5 1] , 1);
spatiallyaveragedpicture = imfilter(picture, H2, 'replicate');

figure(1)
clf
imshow(picture, [])
figure(2)
clf
imshow(timeaveragedpicture, [])
figure(3)
clf
imshow(spatiallyaveragedpicture, [])

% creating a plot showing the different aspects of each graph

avpic = mean(picture,2);
positions1 = 0:size(picture(:,1))-1;
size(positions1)
varpic = var(picture,0,2)';
size(varpic)

avtimepic = mean(timeaveragedpicture,2);
vartimepic = var(timeaveragedpicture,0,2)';

avspatialpic = mean(spatiallyaveragedpicture,2);
varspatialpic = var(spatiallyaveragedpicture,0,2)';

plot(positions1,avpic,'b.',positions1,varpic,'bo',positions1,avtimepic,'g.',positions1,vartimepic,'go',positions1,avspatialpic,'r.',positions1,varspatialpic,'ro');

% We notice in the graph that the spatially averaged has the lowest
% variance. This makes sense, because the particles being kicked can only
% stay within a certain space, so the change of the total number of paticles across 5 space units is not
% too extreme. Time averaging yields a slightly higher variance because,
% well I'm not actually sure, I might email Romain!
