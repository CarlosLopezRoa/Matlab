A=(eye(50)*4)+(diag(ones(49,1),-1))+(diag(ones(49,1),1));
B=3*ones(50,1);
C=[A B];
D=rref(C);
D(:,51)
