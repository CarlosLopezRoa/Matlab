% Carlos López Roa
% Método de Laguerre para obtener las ráices de algún polinomio con
% coeficientes reales.


%% Declare independance
a=[1 2 3 4];
x=0; % estimación inicial
r=x+randn;
tol=1*10^-12; % tolerancia
n=length(a)-1; % Debido al término independiente el grado es menor al número de términos en el polinomio
ansi=zeros(n,1);
p=a(1); pp=0; ppp=0;
%% Root rootine
for ii=1:n
    for i=1:n
        ppp=2*pp+r*ppp;
        pp=pp*r+p;
        p=p*r+a(i+1);
    end
    g=pp/p;
    h=g*g-ppp/p;
    r=r-(n/(g+(sqrt((n-1)*(n*h-g*g)))));
ansi(ii)=r;
end
b(1)=a(1);
for i=2:n
    b(i)=a(i)+r*b(i-1);
end
a=b;

ansi