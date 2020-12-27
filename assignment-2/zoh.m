function y = zero_order_hold (x, T)
y = [];
y = 0;
for i = 1:T:length(x)
  % sprintf('%d - %d - %d', i, i + T, x(i))
  % size(x(i))
  % size(1, ones(T))
  y(i:i + T - 1) = x(i) .* ones(1, T);
end   

y = transpose(y);
end
