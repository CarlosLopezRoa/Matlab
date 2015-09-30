function x=nrcolebrook(re,k_d)
x0=0.3; 
tol=1e-7;
dx=.0001;
cts=[re,k_d];
while 1
    fx0=colebrook(x0,cts);
    dfx0=(colebrook(x0+dx,cts)-colebrook(x0,cts))/dx;
    x1=x0-fx0/dfx0;
    if abs(x1-x0)<tol
        x=x1;
        break
    else
        x0=x1;
    end
end
end