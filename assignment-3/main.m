N = 8;
theta_k = zeros(1,N);
s_k = zeros(1,N);
A = 0.7325; B = 1.6273;

for k=0:N-1
    theta_k(k+1) = pi/2 + (pi*(2*k+1))/N;
    s_k(k+1) = A*cos(theta_k(k+1)) + 1j * sin(theta_k(k+1));
end

% s_k = s_k(1:4);
z_k = zeros(1,N);
num = 1;
for k=1:N
    z_k(k) = (1+0.5*s_k(k))/(1-0.5*s_k(k));
    num = num * z_k(k);
    
end

b0 = 0.1634;
a1 = [1, -1.0136, 0.6296];
a2 = [1, -0.9288, 0.259];


a = conv(a1, a2);

[h, w] = freqz(b0, a);
plot(w,1.01 * abs(h));
ylabel('|H(e^{jw})|');
xlabel('w');
grid on;