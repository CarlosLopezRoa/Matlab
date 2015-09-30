clc  % Metodo de newton HN
clear all
close all
tic
tol=1*exp(-12);
x0=input('estimado inicial  ');
n=1;
r=1;
R=randi(100,1000,1);
dx=(10^-4);
while (example1(x0+dx)-example1(x0))/dx <tol         
      x0=x0+((-1)^r)*R(r);
      r=r+1;
       if (example1(x0+dx)-example1(x0))/dx==Inf || (example1(x0+dx)-example1(x0))/dx==-Inf
          disp('fail1')
          break
       end
end
while 1 
    fx0=example1(x0);          
    dfx0=(example1(x0+dx)-example1(x0))/dx;
    z0=x0-fx0/dfx0;
    dfz0=(example1(z0+dx)-example1(z0))/dx;
    x1=x0-(fx0*(dfx0+dfz0))/(2*(dfx0*dfz0)); 
    x(n)=x0; 
      n=n+1;
      if isnan(x0)==1
          disp('fail2')
          break
      end 
    if abs(x1-x0)<tol
        disp('Raiz ')
        disp(x1),
        disp('iteraciones ')
        disp(n)
        disp(x')
        break
    else 
                x0=x1;
    end
end
toc