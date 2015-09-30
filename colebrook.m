function f=colebrook(x,cons)
re=cons(1);
k_d=cons(2);
f=x+2*log10((k_d/3.7)+((2.51/re)));
end
