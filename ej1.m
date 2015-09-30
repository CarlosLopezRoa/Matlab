clear all, close all
[x]=solve('2*log(x)-log(25*x)*log(5)-87*log(5)=0')
(log(x^2)/log(5))-log(25*x)-87
clear x
syms x
ezplot((log(x^2)/log(5))-log(25*x)-87)
hold on
title('Ejercicio 1')
xlabel('x')
ylabel('log(x^2)/log(5))-log(25*x)-87')
legend('log(x^2)/log(5))-log(25*x)-87')