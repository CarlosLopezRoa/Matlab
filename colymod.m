%newton raphson sim modificado
clear all
syms l s n
resp=input('Usar STP s/n  ');
if resp==s
d=.00635;
v=10;
ro=1000;
m=8.9*10^4;
k=.00625;
else
    d=input('¿Diámetro [m]? ');
    v=input('¿Velocidad [m/s]? ');
    ro=input('¿Densidad [kg/m^3]? ');
    m=input('¿Viscosidad [Pa*s]? ');
    k=input('¿Rugosidad [Pa*s]?  ');
end
tol=1*10^-8;
f=(1/sqrt(l))+2*log10(((k/d)/3.7)+((2.51/(((ro*v*d)/m)*sqrt(l)))));
i=[1:100000:1000000];
for ii=1:length(i)
tic
l0=i(ii);
df=diff(f);
while 1
    fl0=subs(f,l,l0);
    dfl0=subs(df,l,l0);
    l1=l0-(fl0/dfl0);
    if l1==Inf;
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