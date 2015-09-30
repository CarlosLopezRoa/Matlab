n=input('');
m=1;
c=[];
while m<10
    if n>2^-m
        c(m)=1;
        n=n-2^-m;
        m=m+1;
    end
    if n<2^-m
        c(m)=0;
        m=m+1;
    end
    if n==2^-m
        c(m)=1;
        break
    end
end
c
        
        
        
