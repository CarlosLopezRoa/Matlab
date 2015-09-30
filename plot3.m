clear all, clc, close all
r=26;
x=0:.1:4;
y=x;
[X,Y]=meshgrid(x,y);
Z=sqrt(r^2 -X^2 -Y^2);
mesh(X,Y,Z)