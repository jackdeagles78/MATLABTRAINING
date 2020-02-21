%Generate array of uniformly distributed random numbers
r=rand(1000,1)
hist(rand(100000,1))

%I'm not sure how we should check the central limit theorem as specified in
%the instruction

%now to assign the heads or tails to each outcome
seq = zeros(1000,1);
for i=1:length(seq)
    if r(i)< 0.6
        seq(i) = 1;
    end 
end
seq
hist(seq,2)
        

