%Ejemplo 3: blackjack
a=randi (13,1,2)
if a(1)==1
    disp('carta 1 1 ó 11')
    a(1)=input('');
elseif a(2)==1
    disp('carta 2 1 u 11')
    a(2)=input('');
end
if sum(a) < 17
    disp('no apueste')
elseif sum(a)==17
        disp('apueste con riesgo')
elseif (sum(a) >17) && (sum(a) < 21)
    disp('apueste')
elseif sum(a)==21
    disp('gana perro')
elseif sum(a) >21 
    disp('perdió')
end