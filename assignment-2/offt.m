function P1 = offt (x, L)
  X = fft(x);
  P2 = abs(X/L);
  P1 = P2(1: L/2 + 1);
  P1(2:end) = 2 * P1(2:end);
end
