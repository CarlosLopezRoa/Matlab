% Carlos López Roa
% Runge kutta
function [A]=runkutta(l)
%% Declare independance
a=0; b=30;
h=(b-a)/l;
t=a:h:b;
le=length(t);
A=zeros(le,2);
x1=1; x2=2;
A(1,:)=[x1,x2];
%% Raute
for i=1:le-1
    [dx1,dx2]=eval(x1,x2,t(i));
     x1=x1+h*dx1;
     x2=x2+h*dx2;
     A(i+1,:)=[x1,x2];
end
plot(t,A(:,1),'r')
hold on
t=a:.001:b;
f=(-611*exp(-t)+812*exp(-t/4)-6*cos(2*t)-9*sin(2*t))/195;
plot(t,f,'b')

%% Funny
function[dx1,dx2]=eval(x1,x2,t)
dx1=x2;
dx2=(sin(2*t)-x1-5*x2)/(4);
end
end
