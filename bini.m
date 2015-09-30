clear all
n=input('Número a convertir ');
c=zeros(30,1);
while 2
a=floor(log(n)/log(2))
c(a)=1
n=n-2^a
if n==1e
    break
end
end
c