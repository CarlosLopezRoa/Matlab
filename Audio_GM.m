%Opciones de Audio

close all
clear all
clc

%Identificar a nuestros dispositivos de audio

Info=audiodevinfo; %Nombre, versión del driver y número de los dispositivos 
%de entraday salida de audio
Entrada=audiodevinfo(1,0) %Nombre del dispositivo de entrada
Salida=audiodevinfo(0,1) %Nombre del dispositivo de salida

% Grabar nuestra voz por 10 segundos

Rec=audiorecorder(96000,24,2);
%La primera opción se refiere a la frecuancia de grabación en Herz, la
%segunda se refiere a la precisión de los datos adquiridos por la grabación
%y la tercera al número de canales de grabación (1-mono,2-stereo).

%Bloque dónde se realiza la grabación de nuestra voz o lo que deseemos
%grabar
disp('Comience a hablar.')
recordblocking(Rec, 10);
disp('La grabación ha terminado.');

% Escuchar nuestra grabación
play(Rec)

% Obetner la información generada por el audio en un arreglo de doble
% precisión
Grabacion=getaudiodata(Rec);

% Gráfica de nuestra grabación 
plot(Grabacion)