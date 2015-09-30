%newton raphson
close all
clear all
syms x
f=input('Ingrese la función  ')
df=diff(f);
ezplot(f)
grid on
hold on
[x0i,y0i]=ginput;
tol=1*10^-8;
plot(x0i,0,'o')
plot(x0i,subs(f,x,x0i),'o')
for ii=1:length(x0i)
    x0=x0i(ii);
while 1
    fx0=subs(f,x,x0);
    dfx0=subs(df,x,x0);
    x1=x0-(fx0/dfx0)
    if abs(x1-x0)<tol
        disp (x1), plot(x1,0,'Or')
        break
    else
        x0=x1;
    end
end
    a=[x0,x1];
    b=[subs(f,x,x0),0];
    plot(a,b,'--')
    drawnow 
end
