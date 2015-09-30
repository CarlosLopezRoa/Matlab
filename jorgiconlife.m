% Jorge Armando Barragan Contreras
%Life Game
 
%Aqui definimos una matriz de 100 x 100 de ceros y un vector con valores aleatorios
z=100;
A = zeros (z);
C= zeros (z);
B = randi (10000,500,1);
A (B) = 1;
tic
 
m=0;
figure
hold on;
 % esta "s" define la duracion de tiempo de nuestra colonia de celulas
 % binarias
for s=1:100;
    
for i=1:z
    for j=1:z
        
       for n=1:3
           %en esta parte definimos las fronteras ciclicas de nuestra
           %matriz 
           
           for o=1:3
           c=i-2+n ;
           d=j-2+o;
          
           if c>z
               c=c-z;
           end
               if d>z
                   d=d-z;
               end
             if c<1
                 c=c+z;
             end
                 if d<1
                     d=d+z;
                 end 
             if c ==i && d== j
            m=m;     
                 
             else
            if A(c,d)==1;
                m=m+1;
          
            end
            
                
            end
           end
           %aqui definimos las reglas que dan coherencia al movimiento de
           %las celulas binarias
       end
       if A(i,j)==1
       if m>3
           C(i,j)=0;
       else
       if m<2 
           C(i,j)=0;
       else
           C(i,j)=1;
       end
       
       end
       end
       if A(i,j)==0
           if m==3
               C(i,j)=1;
           end
       end
       
        m=0;
    end
end
A=C;
 
imshow (A)
pause(.1) 
 
toc
 
end
