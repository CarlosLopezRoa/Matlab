%%
clear all
clc
A=audiodevinfo;
rec=audiorecorder(5000,24,1);
recordblocking(rec,5);
grab=getaudiodata(rec);
plot(grab)
sum(sqrt(grab(:,1).^2))/(length(grab(:,1)))
%f=fft(grab);
%figure,plot(f)