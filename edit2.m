clear all, clc, close all
n=input('ingrese el tamaño malla:');
x=linspace(-4,4,n);
[X,Y]=meshgrid(x,x);
Z=(16-X.^2 -Y.^2);
pos=find(Z > 0);
Z2=nan(n);
Z2(pos)=Z(pos);
mesh(X,Y,sqrt(Z2))