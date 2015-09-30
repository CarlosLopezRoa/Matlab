%Opciones de Audio

close all
clear all
clc

%Identificar a nuestros dispositivos de audio

Info=audiodevinfo; %Nombre, versi�n del driver y n�mero de los dispositivos 
%de entraday salida de audio
Entrada=audiodevinfo(1,0) %Nombre del dispositivo de entrada
Salida=audiodevinfo(0,1) %Nombre del dispositivo de salida

% Grabar nuestra voz por 10 segundos

Rec=audiorecorder(96000,24,2);
%La primera opci�n se refiere a la frecuancia de grabaci�n en Herz, la
%segunda se refiere a la precisi�n de los datos adquiridos por la grabaci�n
%y la tercera al n�mero de canales de grabaci�n (1-mono,2-stereo).

%Bloque d�nde se realiza la grabaci�n de nuestra voz o lo que deseemos
%grabar
disp('Comience a hablar.')
recordblocking(Rec, 10);
disp('La grabaci�n ha terminado.');

% Escuchar nuestra grabaci�n
play(Rec)

% Obetner la informaci�n generada por el audio en un arreglo de doble
% precisi�n
Grabacion=getaudiodata(Rec);

% Gr�fica de nuestra grabaci�n 
plot(Grabacion)