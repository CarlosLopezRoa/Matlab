function[f]=example1(x) 
p=101;
a=9.1;
w=2*pi*2;
f=2*p*(exp(-a*x)*(cos(w*x+pi/3)));
end