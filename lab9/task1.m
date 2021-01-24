ws1 = 0.2 * pi;
wp1 = 0.35 * pi;
wp2 = 0.65 * pi;
ws2 = 0.80 * pi;

trans_width = min((wp1-ws1),(ws2-wp2));

wc1 = (ws1 + wp1)/2;
wc2 = (ws2 + wp2)/2;

M = ceil((11*pi)/trans_width);
hd1 = ideal_lp(wc1, M+1);
hd2 = ideal_lp(wc2, M+1);

