clear all
close all
A=[-.5:.05:-.05];
B=[.05:.05:.5];
D=[A;B];
for d=1:length(D)
    syms x1 x2 x3 x4 x5 x6
    e1=x1-x2+(16/9)*D(d)*(x3-x1)+(5/3)*x1*x2-x1*(x2)^2;
    e2=3*x1-(3/2)*x2+(16/9)*(x4-x2)-(5/3)*x1*x2+x1*(x2)^2;
    e3=x3-x4+(16/9)*D(d)*(x1-2*x3+x5)+(5/3)*x3*x4-x3*(x4)^2;
    e4=3*x3-(3/2)*x4+(16/9)*(x2-2*x4+x6)-(5/3)*x3*x4+x3*(x4)^2;
    e5=x5-x6+(16/9)*D(d)*(x3-x5)+(5/3)*x5*x6-x5*(x6)^2;
    e6=3*x5-(3/2)*x6+(16/9)*(x4-x6)-(5/3)*x5*x6+x5*(x6)^2;
    [x1,x2,x3,x4,x5,x6]=solve(e1,e2,e3,e4,e5,e6);
    subplot(3,2,1),plot(D(d),x1,'.'), hold on
    subplot(3,2,2),plot(D(d),x2,'.'), hold on
    subplot(3,2,3),plot(D(d),x3,'.'), hold on
    subplot(3,2,4),plot(D(d),x4,'.'), hold on
    subplot(3,2,5),plot(D(d),x5,'.'), hold on
    subplot(3,2,6),plot(D(d),x6,'.'), hold on
    hold on
end
