% Carlos López Roa
% Uso de los criterios de Kramers Kronig para estimar la parte real e
% imaginaria de una función impedancia para un circuito C R en paralelo.
% 3/3/11
%% Valores
c=1*10^-6; r=1*10^3; om=logspace(-1,6,10000);
zr=r./(1+(r*om*c).^2);
zi=-r^2*om*c./1+(r*om*c).^2;
%% Plot
figure(10) 
loglog(om,zr)
figure(11)
loglog(om,zi)
%% Integral 
%for a=1:1000
%zi(a)=-(2*om/pi)