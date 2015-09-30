%ejemplo2
clear all, close all, clc
syms x;
f1=x^2;
f2=x;
f3=x^3-x^2-3;
f4=tan(x)/x;
subplot(2,2,1),ezplot(f1)
subplot(2,2,2),ezplot(f2)
subplot(2,2,3),ezplot(f3)
subplot(2,2,4),ezplot(f4)