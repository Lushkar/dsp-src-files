FREQUENCY_END = 15000; % End of the length of frequency USED in plotting spectrums

% The following are re-defined when running main
Fs = 44100; % Sampling Frequency
T = 2;      % Total Time of x(t)
L = Fs * T; % Total length of x(t)

fc = 5000;  % Cutoff frequency

% Downsampling factor
M = 2;