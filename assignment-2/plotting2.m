subplot(2, 1, 1);
plot(t, xf);
title('Audio Signal x_f(t)')
xlabel('time (t)')
ylabel('x_f(t)')

subplot(2, 1, 2);
plot(2 * pi * f(1:FREQUENCY_END), Xf(1:FREQUENCY_END));
title('Single Sided Spectrum of X_f(\Omega)')
xlabel('frequency (\Omega)')
ylabel('|X_f(\Omega)|')