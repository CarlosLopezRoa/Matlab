%%
close all
x_e=50; l=100; x=randi([0,100],l,1);
for n=1:l
    x_p(n)=sum(x(1:n))/n;
    x_d(n)=sqrt(sum((x(1:n)-x_p(n)).^2)/n);
    x_ne(n)=(n+1)*(x_e)-(x_p(n))*n;
end
plot(x,'*')
hold on
plot(x_p,'r')
hold on
plot(x_p+x_d,'k')
hold on
plot(x_p-x_d,'k')
hold on
plot(x_ne,'o')