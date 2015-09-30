function[f]=coly(l)
d=.00635;
v=10;
ro=1000;
m=8.9*10^4;
k=.00635;
f=(1/l)+2*log10(((k/d)/3.7)+((2.51/(((ro*v*d)/m)*sqrt(l)))));
end

