function [mat]=b2iclass(matdim)
tic
A=zeros(matdim+1,2*matdim);
A(1,matdim)=1;
bin=[0 1 0 1 1 0 1 0];
for m=2:matdim;
Z=A(m-1,1:2*matdim-2)*4+A(m-1,2:2*matdim-1)*2+A(m-1,3:2*matdim)+1;
A(m+1,:)=[0, bin(Z), 0];
end
img=mat2gray(A);
mat=imshow(img);
toc
end