clear all
a=zeros(100000,1);
tic
for m=1:100000;
    a(m)=m;
end
toc