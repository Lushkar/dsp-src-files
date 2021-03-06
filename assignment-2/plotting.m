subplot(2, 1, 1);
plot(t, x);
title('Audio Signal x(t)')
xlabel('time (t)')
ylabel('x(t)')

subplot(2, 1, 2);
plot(2 * pi * f(1:FREQUENCY_END), P1X(1:FREQUENCY_END));
title('Single Sided Spectrum of X(\Omega)')
xlabel('frequency (\Omega)')
ylabel('|X(\Omega)|')