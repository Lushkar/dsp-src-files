subplot(2, 1, 1);
stem(t(1:500), x_n(1:500));
title('Audio Signal x[n]')
xlabel('time (t)')
ylabel('x[n]')

subplot(2, 1, 2);
plot(2 * pi * f(1:FREQUENCY_END), Xn(1:FREQUENCY_END));
title('Single Sided Spectrum of X(\Omega)')
xlabel('frequency (\Omega)')
ylabel('|X(\Omega)|')