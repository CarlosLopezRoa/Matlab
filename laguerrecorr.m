%% Carlos López Roa 
%% Método de Laguerre para encontrar raíces de un polinomio
%----------------------------------------------------------
%Sintaxis: laguerrecorr(Polinomio)
%----------------------------------------------------------
%% Sugar Water
function zetas=laguerrecorr(p)
global x 
global n 
global tol
nini=length(p)-1;
x=2; tol=1*10^(-6); 
n=length(p)-1;
%% Big rootine 
for ru=1:nini
x=rooti(p);
p=clouds(p);
zetas(ru)=x;
n=length(p)-1;
end
function r=rooti(p)
dr=2;
while dr>tol 
px=p(n)*x+p(n+1);
ppx=p(n);
pppx=0;
for k=1:n-1
px=px+p(k)*x^(n+1-k);
ppx=ppx+(n+1-k)*p(k)*x^(n-k);
pppx=pppx+(n-k)*(n+1-k)*p(k)*x^(n-1-k);
end
if abs(px)<tol 
    return 
end
gx=ppx/px;
hx=-(pppx/px)+(gx)^2;
r=-(n/(gx+sqrt((n-1)*(n*hx-gx^2))))+x;
dr=abs(x-r);
x=r;
end
end
function b=clouds(p)
b(1)=p(1);
for i=2:n
    b(i)=p(i)+x*b(i-1);
end
end
end