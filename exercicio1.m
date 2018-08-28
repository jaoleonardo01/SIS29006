clear all
close all
tmin = 0;
tmax = 3;
L = 100000; %pontos
Ts=(tmax-tmin)/L;
Fs=1/Ts;
t=linspace(tmin,tmax,L);
s = 2*sin(2*pi*1000*t) + 5*sin(2*pi*2000*t) + 10*sin(2*pi*3000*t);
subplot(3,1,1),plot(t,s);axis([0.80 0.81 -20 20]);
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