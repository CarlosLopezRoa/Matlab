% Carlos López Roa  27/4/11
% Descomposición de LU para matrices cuadradas.
%Sintaxis%%%%%%
%%%%%%%[L,U,P,s]=lup(A,b)
% A es la matriz problema, b es el vector solución en Ax=b
% entrega la factorización PA=LU, P es la matriz de permutación, L la
% diagonal inferior y U la diagonal superior. s es el vector tal que As=b.
%% Retina
%A=[2 -3 -2 -3 1; 3 -2 3 -1 -3;-3 0 3 3 2;3 3 0 2 3; 1 3 2 3 1];
%v=[1; 2 ; 3;4 ; 5];
function [L,U,P,s]=LUpe(A,v)
%A=randi([-1,1],5);
n=length(A);
L=zeros(n);
U=A;
if det(A)==0 
    error('A es singular')
end
% Partial Pivoting del mal
% B=A;
% for ir=1:n
% B(:,ir)=(abs(A(:,ir))==max(abs(A(:,ir))));
% end
%
P=eye(n);
for j=1:n-1
 C=U;
    [a,b]=max(abs(U(j:n,j)));
    if a==0;
        error('Que es singular!')
    end
    b=b+j-1;
    U(j,:)=C(b,:);
    U(b,:)=C(j,:);
    
     D=L;
      L(j,:)=D(b,:);
      L(b,:)=D(j,:);
      
      E=P;
      P(j,:)=E(b,:);
      P(b,:)=E(j,:);
      
      F=v;
      v(j,:)=F(b,:);
      v(b,:)=F(j,:);
for i=j+1:n
L(i,j)=U(i,j)/U(j,j);
U(i,:)=U(i,:)-L(i,j)*U(j,:);
end
end
L=L+eye(n);
% Forward Substitution
z=zeros(n,1);
for ii=1:n
    z(ii)=v(ii)-dot(L(ii,1:ii),z(1:ii));
end
% Back Substitution
x=zeros(n,1);
m=n+1;
UP=U;
for ii=1:n
    UP(ii,ii)=0;
end

for ii=1:n
    x(m-ii)=(z(m-ii)-dot((UP(m-ii,m-ii:n)),x(m-ii:n)))/U(m-ii,m-ii);
end
% Print
s=x;
end
    
%%    
% L(2,1)=U(2,1)/U(1,1);
% U(2,:)=U(2,:)-L(2,1)*U(1,:);
% L(3,1)=U(3,1)/U(1,1);
% U(3,:)=U(3,:)-L(3,1)*U(1,:);
% L(3,2)=U(3,2)/U(2,2);
% U(3,:)=U(3,:)-L(3,2)*U(2,:);

