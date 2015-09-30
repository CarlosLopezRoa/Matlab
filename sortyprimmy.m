function[A]=sortunam([A])
n=length(A);
for jj=1:n
for ii=n:-1:2
if A(ii)>=A(ii-1)
    cont=A(ii-1);
    A(ii-1)=A(ii);
    A(ii)=cont;
end
end
end
