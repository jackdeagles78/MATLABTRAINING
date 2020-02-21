%Exercise 8.2 ; Constructing a transition matrix given the parameters
p=[0.3,0.4,0.5,0.6, 0.6, 0.7];
A = zeros(7);
for i=1:length(p);
    A(i+1,i) = p(i);
end
A(1,7)=12;
A(7,7)=0.9;
%We have constructed the transition matrix. Now we just need to find the
%dominant eigenvector and calculate the sensitivities

[W, D] = eig(A);
L = diag(D);
j=find(abs(L)==max(abs(L)));
L1 = L(j);
w=W(:,j);
w=w/sum(w);

B = transpose(A);
[W, Di] = eig(B);
Ll = diag(Di);
j=find(abs(Ll)==max(abs(Ll)));
L2 = Ll(j);
v=W(:,j);
v=w/sum(w2);

n=length(v);
vdotw=dot(v,w);
s=v*w' /vdotw;
e = (s.*A)/L1;
v
w
