n=input('')
s1=0;
s2=1;
c=[];
for ii=3:n
    c(ii)=s2+s1
    s1=s2
    s2=c(ii)
end
