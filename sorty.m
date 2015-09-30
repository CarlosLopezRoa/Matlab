v=input('Escriba su vector entre []');
a=length(v);
g=zeros(1,a);
for j=1:a
    [b,y]=min(v);
    v(y)=nan;
    g(j)=b;
end
g