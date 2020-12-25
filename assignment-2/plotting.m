subplot(2, 1, 1);
t_axis = 1:1/(Fs*T):T-1/(Fs*T);
plot(t_axis, x);
% size(1:1/(Fs*T):T-1/(Fs*T))
% size(x)
title('Audio Signal x(t)')
xlabel('time (t)')
ylabel('x(t)')

subplot(2, 1, 2);
plot(2 * pi * f, P1X);
title('Single Sided Spectrum of X(\Omega)')
xlabel('frequency (\Omega)')
ylabel('|X(\Omega)|')