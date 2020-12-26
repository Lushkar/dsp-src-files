[x Fs] = audioread('ui2.wav');
L = length(x);
T = L / Fs;
ft = 50;

t = linspace(0, T, L);

xt = cos(2 * pi * ft * t);

Xt = abs(fft(xt)/L);
P1 = Xt(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

[b a] = butter(3, 100/(Fs/2), 'high');
xf = filter(b,a,xt);
Xf = abs(fft(xf)/L);
Xf = Xf(1:L/2+1);
Xf(2:end-1) = 2*Xf(2:end-1);


f = Fs*(0:(L/2))/L;
subplot(2,1,1)
plot(t,xf)


subplot(2,1,2)
% plot(f(1:100),Xf(1:100))
plot(t,xt);