N = 4;
wc = 0.3 * pi;
Td = 2;

OmegaC = wc/Td;
b = OmegaC^N;
a = 1;
s = 1j* 2*pi* linspace(-pi, pi, 1000); 
w = linspace(-pi, pi, 1000);
% plot(w)
for k = 1:N-1
    ek = (1j * pi * (2*k + N + 1)) / (2*N);
    sk = OmegaC * exp(ek);
    a = a .* (s - sk);
end

 Hs = b ./a;
 plot(w, abs(Hs))
