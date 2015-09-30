A=[1 2 3 4 5];
B=[1 3 5 7 8];
for n=1:length(A)
    C(n)=A(n)*B(n);
end
C=sum(C)