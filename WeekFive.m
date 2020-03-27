%%%%%%%%%%% WEEK 5 %%%%%%%%%%%%%%%%

%import the image

A = imread('emily.tiff.tiff');

% my tiff image from the internet gave me 4 images, I'll convert A so it
% only gives me the first one (i.e I want the first matrix)

A = A(:,:,1);

%convert the entries to a more usual form

A = single(A);

%set the color map so we have a gradual set of possibilities of intensity

co=[0:255]/256; colormap([co;co;co]');

%display the image

image(A);

%%%%%Averaging%%%%%

% construct the required 3x3 array

F=(1/9).*ones(3,3);

% now we convolve the image with the filter
figure; colormap([co;co;co]');
averagedA = conv2(A,F);
image(averagedA);

%how about if we average with a larger array?

F2=(1/225).*(ones(15,15));

figure; colormap([co;co;co;]');
averagedA2 = conv2(A,F2);
image(averagedA2);


%%% Playing around with noise %%%%

% make a noisy version of the original image

noisyA = A.*(1.2*rand(size(A)));
figure; colormap([co;co;co;]');
image(noisyA);

% apply the filters from the first part

noisysmallsmooth = conv2(noisyA,F);
figure; colormap([co;co;co;]');
image(noisysmallsmooth);

noisylargesmooth = conv2(noisyA,F2);
figure; colormap([co;co;co;]');
image(noisylargesmooth);

%%interlude - making a gaussian mask%%
gauss = zeros(45,45);
for i = 1:1:45
for j = 1:1:45
gauss(i,j) = exp(-((i-23)^2 + (j-23)^2)/37);
end
end
gauss = gauss/sum(gauss(:));
meanx=0;meany=0;ssq=0;
for i=1:45,for j=1:45,
ssq=ssq+(i^2+j^2)*gauss(i,j);
meany=meany+(j*gauss(i,j));meanx=meanx+(i*gauss(i,j));
5;
end;end
varGauss=ssq-meanx^2-meany^2;


noisygausssmooth = conv2(noisyA,gauss);
figure; colormap([co;co;co;]');
image(noisygausssmooth);

