% Carlos López Roa
% Algoritmo para generar interpolaciones suaves "splines"
%--------- Sintaxis----------%
%[]=splinea12_5_11(x,y)
%%----------------------------
% x,y son vectores con datos de la misma dimensión
function []=spline12_5_11(x,y)
%% Vamos a ver
l=100;
n=length(x);
%x=linspace(0,2*pi,n);
%y=sin(x);
%k=zeros(1,n-2);
%k(1)=0;k(n)=0;
%DI=zeros(1,n-2); D=zeros(1,n-2); DS=zeros(1,n-2);
b=zeros(n-2,1);
% Construir la matriz
M=zeros(n-2,n-2);
%for i=1:n-2
%    D(i)=2*(x(i)-x(i+2));
 %   DI(i)=(x(i)-x(i+1));
  %  DS(i)=(x(i+1)-x(i+2));
   % b(i)=6*((y(i+2)-y(i+1))/(x(i+2)-x(i+1)))-((y(i+1)-y(i))/(x(i+1)-x(i)));
%end
%for i=1:n-2;
%    M(i+1,i)=DI(i);
%    M(i,i)=D(i);
%    M(i,i+1)=DS(i);
%end
for i=1:n-2
   M(i,i)=2*(x(i)-x(i+2));
   %b(i)=6*((y(i+2)-y(i+1))/(x(i+2)-x(i+1)))-((y(i+1)-y(i))/(x(i+1)-x(i)));
   b(i)=6*( ( (y(i)-y(i+1)) / (x(i)-x(i+1)) ) - ...
       ( (y(i+1)-y(i+2) )/(x(i+1)-x(i+2)) ) );
end
for i=1:n-3
   M(i+1,i)=x(i+1)-x(i+2); 
   M(i,i+1)=x(i+1)-x(i+2);
end
% Reducción tridiagonal en LU
L=zeros(n-2,n-2);
U=zeros(n-2,n-2);
m=M;
U(1,1)=M(1,1);
for i=2:n-2    
    U(i-1,i)=m(i-1,i);
    L(i,i-1)=m(i,i-1)/U(i-1,i-1);
    U(i,i)=m(i,i)-L(i,i-1)*U(i-1,i);
end
L=L+eye(n-2);
%U(1,1)=D(1);
%L(1+1,1)=DI(1)/D(1);
%U(1,2)=DS(1);
%for i=2:n-2
%    L(i+1,i)=DI(i)/D(i);
%    U(i,i)=D(i)-dot(DI(i-1)/D(i-1),DS(i-1));
%    U(i,i+1)=DS(i);
%end   

%for i=1:n-3
%   L(i+1,i)=M(i+1,i)/M(i,i);
%   U(i,i+1)=M(i,i+1);
%end
%U(1,1)=M(1,1);
%for i=2:n-2
%    U(i,i)=M(i,i)-L(i,i-1)*U(i-1,i);
%end
%L=L+eye(n-2);
% Forward Substitution
z=zeros(n-2,1);
for i=1:n-2
    z(i)=b(i)-dot(L(i,1:i),z(1:i));
end
% Back Substitution
X=zeros(n-2,1);
UP=U;
for i=1:n-2
    UP(i,i)=0;
end
for i=1:n-2
    X(n-1-i)=(z(n-1-i)-dot((UP(n-1-i,n-1-i:n-2)),X(n-1-i:n-2)))/U(n-1-i,n-1-i);
end
k=[0; X ;0] ;
%[l,u]=lu(M); %La reducción tridiagonal por los métodos de arriba no dio este resultado.
%z=inv(l)*b;
%k=inv(u)*z;
%k=[0;k;0];
%ysp=zeros(1,n-1);
%for i=1:n
%    ysp(i)=(k(i)/6)*((x(i)-x(i+1))^2-(x(i)-x(i+1))^2)+k(i+1)*();
%ysp(i)=
% Eso del plot
plot(x,y,'*')
hold on
for i=1:n-1
xx=linspace(x(i),x(i+1),l);  
yy=(k(i)/6)*(((xx-x(i+1)).^3)/(x(i)-x(i+1))-(xx-x(i+1))*(x(i)-x(i+1)))...
-(k(i+1)/6)*(((xx-x(i  )).^3)/(x(i)-x(i+1))-(xx-x(i  ))*(x(i)-x(i+1)))...
+((y(i)*(xx-x(i+1))-y(i+1)*(xx-x(i)))/(x(i)-x(i+1)));
plot(xx,yy,'g')
end
end

