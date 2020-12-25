Fs = 44100; % Sampling Frequency
T = 2;      % Total Time of x(t)
L = Fs * T; % Total length of x(t)

fc = 5000;  % Cutoff frequency

% Records your voice using the audiorecorder function
% run('record.m');

% Reading in the stored .wav file
[x Fs] = audioread('ui2.wav');

% One sided frequency transform of x
P1X = one_sided_fft(x, L);


f = Fs * (0:(L/2)) / L; % One sided frequency array

% Run this to plot the 
% run('plotting.m');


% Designing the butterworth filter
[b a] = butter(3, fc/(Fs/2));
xf = filter(b, a, x);
Xf = one_sided_fft(xf, L);

% freqz(b, a);

subplot(2, 1, 1);
plot(xf);
title('Filtered time signal x_f(t)');
xlabel('time (t)');
ylabel('x_f(t)')

subplot(2, 1, 2);
t_axis = 1:1/(Fs*T):T-1/(Fs*T);
plot( x);
% size(1:1/(Fs*T):T-1/(Fs*T))
% size(x)
title('Audio Signal x(t)')
xlabel('time (t)')
ylabel('x(t)')


% subplot(2, 1, 2);
% plot(2 * pi * f, Xf);
% title('Single Side Band Spectrum of X_f (\Omega)');
% xlabel('frequency (\Omega)');
% ylabel('|X_f (\Omega)|')

% subplot(2, 1, 1);
% plot(2 * pi * f, P1X);
% title('Single Sided Spectrum of X(\Omega)')
% xlabel('frequency (\Omega)')
% ylabel('|X(\Omega)|')