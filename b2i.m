%Carlos López Roa
%Programa para generar imágenes dada una regla de correspondencia. 14/1/11
function [mat]=b2i(matdim)
tic
matriz=zeros(matdim+1,2*matdim);
matriz(1,matdim)=1;
reg=[0 1 0 1 1 0 1 0];
num=[0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1];
for reng=1:matdim
    renglon=matriz(reng,:);
    renglon1=matriz(reng+1,:);
    for regla=1:length(reg);
        for casi=2:2*matdim-1;
            if renglon(casi-1)==num(regla,1) && renglon(casi)==num(regla,2) && renglon(casi+1)==num(regla,3);
                renglon1(casi)=reg(regla);
            end
        end
    end
    matriz(reng+1,:)=renglon1;
end
img=mat2gray(matriz);
mat=imshow(img);
toc
end