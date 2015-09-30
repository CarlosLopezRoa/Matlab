%Carlos López Roa
%Programa para buscar el elemento n de la matriz A 
%Devuelve una matriz con la frecuencia de repetición del elemento n en A
%Sintaxis:
%---------------------------------------------------------------
%-----------------------------eval(A,n)-------------------------
%---------------------------------------------------------------
%23/2/11
function [z]=eval(A,n)
% ar=[2:10,1];
% ab=[10, 1:9];
% pos=find(A==n);
% r=zeros(10,10);
% r(pos)=1;
% z=r(ar,:)+r(ab,:)+r(ar,ab)+r(:,ar)+r(:,ab)+r(ab,ar)+r(ar,ar)+r(ab,ab);
%%%%%%%%%%%%%%%%%%%%
t=A==n;
z=t([2:end,1],[2:end,1])+t([2:end,1],:)+t([2:end,1],[end,1:end-1])+t([end,1:end-1],[2:end,1])+t([end,1:end-1],:)+t([end,1:end-1],[end,1:end-1]);
end