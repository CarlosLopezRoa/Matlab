%function [ans]=simplexxx(m)
%m=input('Inserte la matriz en forma canónica a optimizar');
%%
m=[1 -200 -100 0 0 0 0; 0 .5 .2 1 0 0 500; 0 .4 .3 0 1 0 700; 0 1 1 0 0 1 2000];
%%
%for l=2:length(m(:,1))
[vj,j]=min(m(1,:));
[vi,i]=max(m(:,j)); 
m(i,:)=m(i,:)/m(i,j);
for a=1:length(m(:,1))
if a==i
    continue
end
m(a,:)=m(a,:)-m(i,:).*m(a,j);
end
j=j+1;
[vi,i]=min(m(:,j)); 
m(i,:)=m(i,:)/m(i,j);
for a=1:length(m(:,1))
if a==i
    continue
end
m(a,:)=m(a,:)-m(i,:).*m(a,j);
end
m
%end
%end