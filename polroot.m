function [r]=polroot()
close all
f=@(x) tan(x)+x.^2+exp(x/3);
lin=linspace(-2,10,1200);
for i=0:10
r(i+1)=fzero(f,i);
end
figure (1),plot(lin,f(lin),'.')
hold on
figure (1),plot(r,0,'or')
grid on
axis([-2,6,-10,10])
end