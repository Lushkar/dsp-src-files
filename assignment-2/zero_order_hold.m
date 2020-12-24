function y = zero_order_hold (x, T)
%y = zeros(length(x));
y = 0;
for i = 1:T:length(x)
  sprintf('%d - %d - %d', i, i + T, x(i));
  
end   

endfunction
