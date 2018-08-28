load chirp % som monofônico, -1 <= y <= +1, fs = 8192 Hz ou amostra/s
amostras = length(y);
w = 0:1/(amostras/2):1*(1-1/(amostras/2)); % freq.Dig.: 0-pi (rad/amostra)
% Filtro Passa Alta,ordem 34, wc = 0.48*pi rad/am
% fc = 0.48*fs/2 = 1966 Hz
b = fir1(34,0.48,'high'); % coef.s do filtro FIR desejado
freqz(b,1,512); % resposta em frequência do filtro digital
f = filter(b,1,y); % filtragem do sinal original y(n)
sound(y) % som original
pause(3)
sound(f) % som filtrado
Y = fft(y); % espectro do sinal original
F = fft(f); % espectro do sinal filtrado
