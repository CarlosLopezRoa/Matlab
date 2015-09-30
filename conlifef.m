tam=1000;
a=zeros(tam);
a(randi(tam*tam,1,(tam*tam)/5))=1;
ser=[1:tam];
ar=[ser(2):ser(tam), ser(1)];
ab=[ser(tam), ser(1):ser(tam-1)];
colormap(gray(2));
for ro=1:200
    g8=a(ar,:)+a(ab,:)+a(ar,ab)+a(:,ar)+a(ab,ar)+a(:,ab)+a(ar,ar)+a(ab,ab);
    a = g8==3 | a & g8==2;
    image(a); 
    pause(.02);
end