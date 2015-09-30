%%
clear all
n=input('n=  ');
m=1;
c(1)=n;
while n~=1
    if rem(n,2)==0
        n=n/2;
    end
    if rem(n,2)==1 && n~=1
        n=3*n+1;
    end
m=m+1;
c(m)=n;
end
c