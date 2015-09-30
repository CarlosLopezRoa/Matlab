clear all
n=input('Cuál es n?');
m=1;
c=NaN(20,1);
while n>1
    if rem(n,2)==0
        n=(n/2);
        c(m)=0;
        m=m+1;
    end
    if rem(n,2)==1
        n=(n-1)/2;
        c(m)=1;
        m=m+1;
    end

end
c(m)=rem(rem(n,2),2);
c=fliplr(c);
d=isnan(c);
for i=1:length(d)
if d(i)==0
    e(i)=c(i);
end
end
    
e