clear all
n=input('inserte la dimension de la matriz A, A mayor que B porfavor');
m=input('inserte la dimension de la matriz B');
A=randi(10,n,1);
B=randi(10,m,1);
NA=[nan(n-m,1)];
B=[B;NA];
D=nan(2*(n),1);
for i=1:length(A)
   C=[A(i) B(i)];
   D(2*(i)-1)=C(1);
   D(2*(i))=C(2);
end
D

