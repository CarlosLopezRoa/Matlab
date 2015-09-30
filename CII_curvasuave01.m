% Splining Curvas suaves
% Computación II
%     Daniel Ramírez Peña
clear all
% % 
% Propoemos los puntos solución obtenidos de manera experimental
% x=[3 6 8 12 34 43];
% y=[17 2 8 -1 13 0];
%  x=[0     1     2     3     4     5     6];
%  y=[1    10    49   142   313   586   985];

x=[ 0    1.0472    2.0944    3.1416    4.1888    5.2360    6.2832];
y=[0    0.8660    0.8660    0.0000   -0.8660   -0.8660   -0.0000];

plot(x,y,'*r')
hold on
% Se genera la diagonal principal  en vectores
n=length(x);
DP=zeros(n-2,1);
% Como el vector b es del mismo tamaño de DP usamos el mismo ciclo
b=zeros(n-2,1);
for i=1:n-2
   DP(i)=2*(x(i)-x(i+2)); 
%    b(i)=6*( ( (y(i)-y(i+2)) / (x(i)-x(i+1)) ) - ...
%        ( (y(i+1)-y(i+2) )/(x(i+1)-x(i+2)) ) );
%%% ERROR EN EL SEGUNDO Y
      b(i)=6*( ( (y(i)-y(i+1)) / (x(i)-x(i+1)) ) - ...
       ( (y(i+1)-y(i+2) )/(x(i+1)-x(i+2)) ) );

%    DI(i+1)

end


% Generamos la diagonal inferior
DI=zeros(n-3,1);
for j=1:n-3
    DI(j)=(x(j+1)-x(j+2));
    
end

DS=DI;
% A=diag(DP)+diag(DS,1)+diag(DS,-1);
% KKK=A\b;
% [LL,U]=lu(A);

% Rehacemos el vector DI1=DI1/DP1 y DP2=DP2-DI1*DS1
% Descomposicion en LU
for i=2:n-2
    DI(i-1)=DI(i-1)/DP(i-1);
    DP(i)=DP(i)-(DI(i-1)*DS(i-1));
end

% Ahora queremos buscar a Z que es Z1= B1
for i=2:n-2
    b(i)=b(i)-DI(i-1)*b(i-1);
    
end

%Buscar el valor K donde 
K=zeros(n,1);
K(n-1)=b(n-2)/DP(n-2);
% for i=n-2:-1:2
%     K(i)=b(i-1)-DS(i-1)*K(i+1)/DP(i-1);
% end
%ERROR EN EL CALCULO DE K, FALTA UN PARENTESIS
for i=n-2:-1:2
    K(i)=(b(i-1)-DS(i-1)*K(i+1))/DP(i-1);
end
% Obtener los demas valores requeridos a partir de los ya sabidos
L=100;
xxx=zeros((n-1)*L,1);
yyy=zeros((n-1)*L,1);
% k=[0; K; 0];
%ERROR YA SE TENIA A K COMPLETO
k=K;

for i=1:n-1
    xx=linspace(x(i),x(i+1),L);
    xxx(L*(i-1)+1:L*i)=xx;
    yy(L*(i-1)+1:L*i)=k(i)*( ((xx-x(i+1)).^3)/(x(i)-x(i+1))- ...
        ((xx-x(i+1))*(x(i)-x(i+1))))/6  ...
        -k(i+1)*( ((xx-x(i)).^3)/(x(i)-x(i+1))-((xx-x(i))*(x(i)-x(i+1))))/6 ...
    +(y(i)*(xx-x(i+1))-y(i+1)*(xx-x(i)) )/(x(i)-x(i+1));

end
plot(xxx,yy','.')