% Carlos López Roa
% Algoritmo Simplex, sistema de plantación de maiz y trigo con
% restricciones para el fertilizante y el herbicida, intentando maximizar
% la ganancia.
%% Declaración del sistema
A=[1 -200 -100 0 0 0 0; 0 .5 .2 1 0 0 500; 0 .4 .3 0 1 0 700; 0 1 1 0 0 1 2000];
% Identificar 
% La columna pivote es la segunda porque contiene el número más negativo.
% Al dividir los elementos de la columna pivote, encontrar el cociente
% parámetro/encabezado más negativo. 
% Hacer uno el elemento pivote
% Hacer ceros los elementos de la columna pivote.
A(3,:)=-.4*A(4,:)+A(3,:);
A(2,:)=-.5*A(4,:)+A(2,:);
A(1,:)=200*A(4,:)+A(1,:);
B=A;
%A(3,:)=A(3,:)/(-0.1);
%A(2,:)=0.3*A(3,:)+A(2,:);
%A(1,:)=-100*A(3,:)+A(1,:);
%A(4,:)=-A(3,:)+A(4,:);
B(2,:)=-B(2,:)/-B(2,3);
B(1,:)=-100*B(2,:)+B(1,:);
B(3,:)=.1*B(2,:)+B(3,:);
B(4,:)=-B(2,:)+B(4,:);