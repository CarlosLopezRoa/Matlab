% Carlos López Roa
%Programa para generar imágenes asignando reglas arbitrarias del tipo
%binario. El negro es representado por el 1 y el blanco por el 0. 
% La sintaxis es bini2imag (dimensión de la matriz) 
function [mat]=bini2imag (dimension_matriz)
regla=90;
resolucion=8;
function [binv]=d2bint (n)
m=1;
si=ceil(log(n)/log(2));
ze=zeros(1,si+1);
while n>0
a=floor(log(n)/log(2));
n=n-2^a;
l(m)=a;
m=m+1;
end
for i=1:length(l);
    ze(l(i)+1)=1;
end
binv=ze;
end
matriz=zeros(dimension_matriz+1,dimension_matriz);
matriz(1,dimension_matriz/2)=1;
reglabin=d2bint(regla);
%Hasta aquí bien
asignar=[0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1];

for r=1:dimension_matriz
    renglon=matriz(r,:);
    renglon1=matriz(r+1,:);
    for regla=1:resolucion;
    for casilla=1:dimension_matriz-2;   
        if renglon(casilla)==asignar(regla,1) & renglon(casilla+1)==asignar(regla,2) & renglon(casilla+2)==asignar(regla,3)
          renglon1(casilla+1)=reglabin(regla);
        end
    end
    end
        matriz(r+1,:)=renglon1;
end
    mat=matriz;
end

            
            
            
        
     

