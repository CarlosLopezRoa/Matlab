%Carlos López Roa
%Programa para simular el juego de la vida de Conway 22/2/11

% tam=10;
% a=zeros(tam);
% a(randi(tam*tam,1,15*tam*tam))=1;
% b=[a a a; a a a; a a a];
% b=b(tam:2*tam+1, tam:2*tam+1);  
% ru1=[0,1,1,0,0,0,0,0];
% ru0=[0,0,1,0,0,0,0,0];
% for ro=1:200
% for i=2:tam
%     for j=2:tam
%     z=[b(i-1,j-1),b(i ,j-1),b(i+1,j-1),b(i-1,j  ),b(i+1,j  ),b(i-1,j+1),b(i ,j+1),b(i+1,j+1)];
%     zcur=b(i,j);
%     if b(i,j)==1
%        b(i,j)=ru1(length(z));
%         imshow(b)
%         pause(.01)
%     else 
%             b(i,j)=ru0(length(z));
%             imshow(b)
%       pause(.01)
%         end
%     end
%     imshow(b)
%       pause(.01)
% end 
%         
% end

tam=100;
% a=zeros(tam);
% a(randi(tam*tam,1,(tam*tam)/5))=1;
mundo=int8(zeros(100,100));
mundo(1,1:36) = bitget(2048, 36:-1:1);
mundo(2,1:36) = bitget(10240, 36:-1:1);
mundo(3,1:36) = bitget(12632067, 36:-1:1);
mundo(4,1:36) = bitget(17874947, 36:-1:1);
mundo(5,1:36) = bitget(51573735424, 36:-1:1);
mundo(6,1:36) = bitget(51576055808, 36:-1:1);
mundo(7,1:36) = bitget(34080768, 36:-1:1);
mundo(8,1:36) = bitget(17825792, 36:-1:1);
mundo(9,1:36) = bitget(12582912, 36:-1:1);
a=mundo;
ser=[1:tam];
ar=[ser(2):ser(tam), ser(1)];
ab=[ser(tam), ser(1):ser(tam-1)];
%colormap(gray(2));
for ro=1:500
    g8=a(ar,:)+a(ab,:)+a(ar,ab)+a(:,ar)+a(ab,ar)+a(:,ab)+a(ar,ar)+a(ab,ab);
    a = g8==3 | a & g8==2;
    image(40*a); 
    pause(.02);
end
clear all
   