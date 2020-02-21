A = [1 5 0; 6 4 0; 0 1 2];
[W, D] = eig(A);
L = diag(D);
j=find(abs(L)==max(abs(L)));
L1 = L(j);
w=W(:,j);
w=w/sum(w)

B = transpose(A);
[W, Di] = eig(B);
Ll = diag(Di);
j=find(abs(Ll)==max(abs(Ll)));
L2 = Ll(j);
w2=W(:,j);
w2=w/sum(w2)
