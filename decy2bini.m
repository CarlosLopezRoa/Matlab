%Carlos López Roa
%Programa para convertir número decimales (con parte entera y decimal) en
% su equivalente binario. 14/1/11.

function [bin]=decy2bini (n)
format long g
m=1;
while n>2^-10
a=floor(log(n)/log(2));
n=n-2^a;
l(m)=a;
m=m+1;
end
bin=sum(10.^(l));
end
