%Ejemplo 3: blackjack
a=randi (10,1,2);
if a(1)==1
    disp('carta 1 1 ó 11')
    a(1)=input('');
elseif a(2)==1
    disp('carta 2 1 u 11')
    a(2)=input('');
end