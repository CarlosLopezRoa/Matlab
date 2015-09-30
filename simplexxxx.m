% Carlos López Roa
% Correción al método simplex para optimizar una matriz en un problema
% lineal con restricciones.
%% Inicial
m=[1 -5 -7 0 0 0; 0 2 3 1 0 100; 0 3 3 0 1 90];
%% Algoritmo
while sum(m(1,:)<0)~=0
[vj,j]=min(m(1,:)); %Busca el elemento más negativo en el primer renglón, su valor lo guarda en vj y su posición en j
c=m(:,j); d=m(:,end); r=d./c; r=r.*isfinite(r); %dividir la última columna entre la pivote excluyendo las divisiones entre cero.
[vi,i]=min(r(2:end)); %encontrar el elemento MÁS NEGATIVO de esta división este valor en vi y la posición en i.
i=i+1;
m(i,:)=m(i,:)./m(i,j); %elemento pivote unitario
for a=1:length(m(:,1)) %columna pivote 0
if a==i
    continue
end
m(a,:)=m(a,:)-m(i,:).*m(a,j);
end
end
for r=2:length(m)-1 % maximizando z
    if m(1,r)==0
        continue
    end
    if m(1,r)~=0
        m(:,r)=0;
    end
end
% ¿cómo expreso esto?
disp('Leer la matriz como si se multiplicara por el vector simbólico [z,x1,x2,s1,s2]')
m(1:end,1:end-1)
m(:,end)