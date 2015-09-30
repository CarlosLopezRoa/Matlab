% comandos Switch-Case
clear all, clc, close all
disp('Gráficas de funciones trigonométricas')
disp('')
disp('1. Seno')
disp('')
disp('2. Coseno')
disp('')
disp('3. Tangente')
disp('')
disp('4. Cotangente')
disp('')
disp('5. Secante')
disp('')
disp('6. Cosecante')
disp('')
disp('7. Toditas')
disp('')
disp('Elija la opción: ')
n=round(input(''));
switch(n)
case 1
    ezplot('sin(x)')
    case 2
        ezplot('cos(x)')
    case 3
        ezplot('tan(x)')
    case 4 
        ezplot('cot(x)')
    case 5 
        ezplot('sec(x)')
    case 6
        ezplot('csc(x)')
    case 7 
        subplot(2,3,1),ezplot('sin(x)')
        subplot(2,3,2),ezplot('cos(x)')
        subplot(2,3,3),ezplot('tan(x)')
        subplot(2,3,4),ezplot('cot(x)')
        subplot(2,3,5),ezplot('sec(x)')
        subplot(2,3,6),ezplot('csc(x)')
    otherwise ('el número no está en las opciones babas')
end