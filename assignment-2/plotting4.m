subplot(2, 2, 1);
stem(x_n(1:250));
title('Audio Signal x[n]')
xlabel('Sample Number')
ylabel('x[n]')

subplot(2, 2, 2);
stem(x_d(1:125))
title('Downsampled signal');
xlabel('Sample Number')
ylabel('x_d[n]')


subplot(2, 2, 3);
plot(2 * pi * f(1:FREQUENCY_END), Xn(1:FREQUENCY_END));
title('Single Sided Spectrum of X(\Omega)')
xlabel('frequency (\Omega)')
ylabel('|X_f(\Omega)|')


subplot(2, 2, 4);
plot(M * 2 * pi * f(1:FREQUENCY_END), Xd(1:FREQUENCY_END));
title('Single Sided Spectrum of X(\Omega)')
xlabel('frequency (\Omega)')
ylabel('|X_f(\Omega)|')