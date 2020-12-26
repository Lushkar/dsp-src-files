run('definitions.m');

% Records your voice using the audiorecorder function
% run('record.m');

% Reading in the stored .wav file
[x Fs] = audioread('ui2.wav');
L = length(x);
T = L / Fs;
t = linspace(0, T, L);


% One sided frequency transform of x
P1X = one_sided_fft(x, L);

% One sided frequency array
f = Fs * (1:(L/2+1)) / L; 

% Run this to plot the signal and its spectrum
% run('plotting.m');


% Designing the butterworth filter
[b a] = butter(3, fc/(Fs/2));
xf = filter(b, a, x);
Xf = one_sided_fft(xf, L);

% Showing the frequency response of the butterworth filter
% freqz(b, a);

% Plotting the filtered signal and its spectrum
% run('plotting2.m');


x_n = zero_order_hold(xf, 50);
Xn = one_sided_fft(x_n, L);
% Run this to plot the x_n and its spectrum
% run('plotting3.m')


% Downsampling
x_d = decimate(x_n, M);
Xd = one_sided_fft(x_d, length(x_d));
run('plotting4.m') 




















% subplot(2,1,1);
% plot(f,P1X);
% title('')


% subplot(2, 1, 2);
% plot(f,Xf)
% t_axis = 1:1/(Fs*T):T-1/(Fs*T);
% plot( x);
% size(1:1/(Fs*T):T-1/(Fs*T))
% size(x)
% title('Audio Signal x(t)')
% xlabel('time (t)')
% ylabel('x(t)')


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