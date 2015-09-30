%% Carlos López Roa
A=[1 2 3; 2 4 2; 3 2 1]; %Matriz
n=length(A); %Para no repetir
V=ones(n,1); %Se propone un V
signo=zeros(1,5); %la historia del signo
for i=1:10
    z=A\V;  %Resolver el sistema matricial con exactitud
    nz=norm(z); %La norma
    V=(z)/(nz); %El vector unitario.
    theta(i)=acos(dot(ones(n,1),V)/(norm(ones(n,1))*norm(V))); % el ángulo con respecto al vector identidad
    signo(i)=sign(nz); %La historia del signo
end
if signo(i)==signo(i-1) %Basta con comparar dos
    lambda=1/nz;      % el signo es positivo
else
    lambda=-1/nz; % el cualquier otra condición es negativo.
end
V
lambda