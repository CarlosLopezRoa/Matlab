%Carlos López Roa
%Programa para simular el juego de la vida de Conway. 21/2/11

%function []=conlife(tam)
tam=100;
m=1;
tope=100;
ru1=[0,1,1,0,0,0,0,0];
ru0=[0,0,1,0,0,0,0,0];
a=zeros(tam);
a(randi(tam*tam,1,(tam*tam)/5))=1;
b=[a a a; a a a; a a a];
while m<tope
[ir,jr]=find(a==1);
i=ir+tam;
j=jr+tam;
for ro=1:size(i)
    z=[b(i(ro)-1,j(ro)-1),b(i(ro) ,j(ro)-1),b(i(ro)+1,j(ro)-1),b(i(ro)-1,j(ro)  ),b(i(ro)+1,j(ro)  ),b(i(ro)-1,j(ro)+1),b(i(ro) ,j(ro)+1),b(i(ro)+1,j(ro)+1)];
    if isempty(find(z==1, 1))
        
    else
       zi=find(z==1);
       b(i(ro),j(ro))=ru1(length(zi));
        a=b((tam:2*tam),(tam:2*tam));

    end
    for ro=tam:2*tam
        z=[b((ro)-1,(ro)-1),b((ro) ,(ro)-1),b((ro)+1,(ro)-1),b((ro)-1,(ro)  ),b((ro)+1,(ro)  ),b((ro)-1,(ro)+1),b((ro) ,(ro)+1),b((ro)+1,(ro)+1)];
        if isempty(find(z==1, 1))
        
        elseif b(ro,ro)==0
         zi=find(z==1);
         b((ro),(ro))=ru0(length(zi));
   
        
        end
        a=b((tam:2*tam),(tam:2*tam));
        end

    end
a=b((tam:2*tam),(tam:2*tam));
m=m+1;
mov=mat2gray(a);
imshow(mov)
end







%end
