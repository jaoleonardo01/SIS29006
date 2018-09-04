clc; clear all; close all;
recObj = audiorecorder(44100, 16, 2);
get(recObj)
%Grave uma amostra de 5 segundos de sua voz com o microfone
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');
% Escute sua gravacao
play(recObj);
% Armazene em um vetor
myRecording = getaudiodata(recObj);