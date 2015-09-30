%Carlos López Roa
%Ejemplo en clase para mostrar la forma correcta de usar la función
%"function". 23/2/11
%Devuelve un vector con el valor de la suma y multiplicación de tres
%argumentos.
%-------------------------------------------------------
%-----Sintaxis: [suma,multiplicación]=test1(X,Y,Z)------
%-------------------------------------------------------
%X,Y,Z en lo reales.
%Si no se especifican variables de salida devuelve únicamente la suma.
%test1(X,Y,Z)
function [a,b]=test1(A,B,C)
a=A+B+C;
b=A*B*C;
end
