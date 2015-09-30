% Carlos López Roa
% Programa para obtener la desviación estándar y el promedio instante por
% instante, tiene la novedad de graficar bonito.
% 5/03/11

%% Calificaciones de monos
x=100; c=randi([1,9],x,1)+rand(x,1); c_=zeros(x,1); sigma=zeros(x,1); xi=linspace(0,10,x);
%% for plot suck
close all
c_(1)=c(1); 
figure(1)
axis([0 10 0 10])
grid on
title 'Programa de resultados preliminares en el cómputo de los exámenes de admisión PRPEA'
hold on
for n=2:x
    c_(n)=((n-1)*c_(n-1)+c(n))/(n);
    %sigma(n)=sqrt(((n-1)/(n))*(sigma(n-1)^2+c_(n-1)^2)+(c(n)^2/n)-c_(n)^2);
     sigma(n)=sqrt(((n-1)/(n))*(sigma(n-1)^2+c_(n-1)^2)+((c(n)^2)/n)-c_(n)^2);
    plot(xi(n),c(n),'.',xi(n),c_(n),xi(n),c_(n)+sigma(n),'r',xi(n),c_(n)-sigma(n),'r')
    pause (0.2)
    hold on   
end
legend ('Calificación','Promedio','Desviación estándar')
plot(xi,c_,'g',xi,c_+sigma,'r',xi,c_-sigma,'r')
an=[c c_ sigma]