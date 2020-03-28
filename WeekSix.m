%%%%%%%% WeekSix %%%%%%%%%%%

% First we obtain the desire section of our image %

Inow = I(239:262,:);

% now we need to subtract the averaged time from the instantaneous

% first we need to compute the averages along the rows%

averages=mean(Inow,2); % this returns a COLUMN VECTOR!

%now we need to extend each element of the column into a full row of them,
%using repmat. Then we will be able to perform the subtraction operation
%between Inow and the averages :)

dInow = Inow - repmat(averages,1,10000);

% now we make that spatial correlation function
xmax = 24;
ntimes = size(Inow,2);
taumax = 50;
G = zeros(2*xmax-1, taumax);
for dx=0:xmax-1
 for tau=0:taumax-1
 G(xmax+dx,tau+1)=mean(mean(dInow(1:xmax-dx,1:ntimes-tau).*dInow(dx+1:xmax,tau+1:ntimes)));
 G(xmax-dx,tau+1)=mean(mean(dInow(dx+1:xmax,1:ntimes-tau).*dInow(1:xmax-dx,tau+1:ntimes)));
 end
end


% now we define the required parameters

logtmax = log(taumax);
deltaT = (logtmax-1)/5;
taulistlog = 0:deltaT:5*deltaT;
taulist = exp(taulistlog);
xlist = -(xmax-1):1:xmax-1;

% We want to interpolate the values of G calculated at various taus

Gtaulist = interp1(1:taumax,G',taulist)';
figure;
plot(Gtaulist); xlabel(['\delta_x']); ylabel(['G(\delta_x, \tau_i)']);
