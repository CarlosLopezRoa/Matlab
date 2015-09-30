%Carlos López Roa 24/3/11
%Método de Gauss-Seidel
% Acordeón, hoy aprendí que en los ciclos se  debe renovar la variable en
% cada ciclo. 
% Comentarios plz
%% 
A=[4 -1 1; -1 4 -2;1 -2 4];
b=[12; -1; 5];
tol=1*10^-6;
dia=diag(A);
a=A.*(ones(length(A))-eye(length(A)));
    %let
x=[0; 0; 0];
xn=zeros(1,length(A))';
iter=500;
%%
for m=1:iter
for i=1:length(A)
    xn(i)=(1/dia(i))*(b(i)-  dot(a(i,:),x) );
end
if norm(xn-x)<tol
    x
    return;
end
x=xn;
end
x