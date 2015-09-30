function raiz = laguerrequintis(a,tol)
% Regresa todas las raíces del polinomio de la forma
% a(1)*xˆn + a(2)*xˆ(n-1) + ... + a(n+1).
%Si quieres un error mínimo usa como valor de tolerancia de entrada
% tol = error de tolerancia (1.0e4*eps)
n=length(a)-1;
raiz=zeros(n,1);
for i=1:n
r=laguerre(a,tol);
if abs(imag(r))<tol;
r=real(r);
end
raiz(i)=r;
a=disminucion_gradopolinomio(a,r);
end
function [P,DP,DDP]=evaluar_polinomio(a,r)
n=length(a)-1;
P=a(1);DP=0.0;DDP=0.0;
for i=1:n
DDP=DDP*r+2.0*DP;
DP=DP*r+P;
P=P*r+a(i+1);
end
function r=laguerre(a,tol)
r=randn;
n=length(a)-1;
for i=1:50
[P,DP,DDP]=evaluar_polinomio(a,r);
if abs(P)<tol;
return;
end
G=DP/P; H=G*G-DDP/P;
F=sqrt((n-1)*(n*H-G*G));
if abs(G+F)>=abs(G -F);
dr=n/(G+F);
else dr=n/(G-F);
end
r=r-dr;
if abs(dr)<tol;
return;
end
end
error('Demasiadas iteraciones en Laguerre')
function b=disminucion_gradopolinomio(a,r)
% Disminución del grado del polinomio
% a(1)*xˆn + a(2)*xˆ(n-1) + ... + a(n+1)
%= (x - r)[b(1)*xˆ(n-1) + b(2)*xˆ(n-2) + ...+ b(n)].
n=length(a)-1;
b=zeros(n,1);
b(1)=a(1);
for i = 2:n;
b(i)=a(i)+r*b(i-1);
end
