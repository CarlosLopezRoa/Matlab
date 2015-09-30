%% Carlos López Roa 26-05-11
%Triple gráfica de Bode y Nychols
%w=logspace(1,6,1000);
x=logspace(1,6,100);

y=x;
z=x;
plot3(x,y,z);
hold on
plot3(x(1)*ones(length(x),1),y,z);
plot3(x,y(1)*ones(length(x),1),z);
plot3(x,y,z(1)*ones(length(x),1));

