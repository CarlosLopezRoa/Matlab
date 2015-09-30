% Carlos López Roa
% Mínimos cuadrados para una función con error aleatorio
% 3/3/11
%% Estableciendo una función con error
close all
clear all
x=linspace(-100,100,100);
a1=4;
a2=10;
e=100*randn(1,length(x));
f=a1+a2*x+e;n=length(x);
xb=(1/n)*sum(x);
yb=(1/n)*sum(f);
y=f;
%% Graficar
plot(x,f,'+')
hold on

%% Mínimos cuadrados
a1e=(sum(f).*(sum(x.^2))-sum(x.*f).*sum(x))./(length(x).*(sum(x.^2))-(sum(x).^2));
a2e=(length(x).*sum(x.*f)-sum(x).*sum(f))./(length(x).*sum(x.^2)-(sum(x).^2));
fe=a1e+a2e.*x;
r2=(sum(x.*y)-sum(x)*sum(y)/n)^2/(sum(x.^2)-sum(x)^2/n)/(sum(y.^2)-sum(y)^2/n);

%% Graficar regresión
plot(x,fe)
title (100*r2)