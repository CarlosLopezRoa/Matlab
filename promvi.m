close all
%% Calificaciones de monos
x=100; c_=zeros(x,1); sigma=zeros(x,1); xi=linspace(0,10,x);
l=100; xa=randi([0,10],l,1);
c=xa;
%% for plot suck
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
end

an=[c c_ sigma];
for n=1:l
    x_p(n)=sum(xa(1:n))/n;
    x_d(n)=sqrt(sum((xa(1:n)-x_p(n)).^2)/n);
    x_ne(n)=(n+1)*(x_e)-(x_p(n))*n;
end

plot(xi,xa,'.')
hold on
plot(xi,x_p,'+g')
hold on
plot(xi,x_p+x_d,'*r')
hold on
plot(xi,x_p-x_d,'*r')
hold on
plot(xi,c_,'g',xi,c_+sigma,'r',xi,c_-sigma,'r')
hold on
legend ('Calificación','Promedio','Desviación estándar')
hold on