clear all
close all

tmin = 0;
tmax = 3;
L = 5000; %pontos
Ts=(tmax-tmin)/L;
Fs=1/Ts;
t=linspace(tmin,tmax,L);
s = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);
subplot(3,1,1),plot(t,s);axis([1.6 1.8 -2 2]);
title('Sinal')
xlabel('t')
ylabel('s(t)')
S = fft(s);
S = abs(S);
S=fftshift(S);
freq = Fs*(-(L/2):(L/2)-1)/L;
subplot(3,1,2),plot(freq,S)
title('Espectro de Amplitude de s(t)')
xlabel('f (Hz)')
ylabel('|S(f)|')
Sp=S(floor(L/2)+1:L);
freq = freq(floor(L/2)+1:L);
subplot(3,1,3),plot(freq,Sp)
title('Espectro de Amplitude de s(t)')
xlabel('f (Hz)')
ylabel('|S(f)|')
