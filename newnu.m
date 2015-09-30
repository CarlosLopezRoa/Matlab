%newton raphson numerico
close all
clear all
tic
dex=0.0001;

x0=input('ingrese el estimado inicial   ')
tol=1*10^-8;

while 1
    fx0=newpy(x0);
    dfx0=(newpy(x0+dex)-newpy(x0))/dex;
    x1=x0-(fx0/dfx0);
    

    if abs(x1-x0)<tol
        disp (x1)
        break
    else
        x0=x1;
    end
end
toc
    
