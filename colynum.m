%newton raphson numerico
close all
clear all
i=[1:100000:1000000];
dex=0.0001;
tol=1*10^-8;
for ii=1:length(i)
tic
l0=i(ii);
while 1
    fl0=coly(l0);
    dfl0=(coly(l0+dex)-coly(l0))/dex;
    l1=l0-(fl0/dfl0);
    if l1==Inf || l1==-Inf 
        disp ('fail')
        break
    elseif abs(l1-l0)<tol 
        disp(l1)
        break
    else
        l0=l1;
    end
end
toc
end
    
