Fs = 44100;
T = 2;
L = Fs * T;

fc = 5000;

[x Fs] = audioread('ui2.wav');

P1X = one_sided_fft(x, L);

f = Fs * (0:(L/2)) / L;

% run('plotting.m');

[b a] = butter(3, fc/(Fs/2));
xf = filter(b, a, x);
Xf = one_sided_fft(xf, L);

% freqz(b, a);

% subplot(2, 1, 1);
% plot(xf);
% title('Filtered time signal x_f(t)');
% xlabel('time (t)');
% ylabel('x_f(t)')


% subplot(2, 1, 2);
% plot(2 * pi * f, Xf);
% title('Single Side Band Spectrum of X_f (\Omega)');
% xlabel('frequency (\Omega)');
% ylabel('|X_f (\Omega)|')
