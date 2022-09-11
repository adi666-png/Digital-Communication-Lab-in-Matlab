Ws = 0.1;
Wp = 0.2;
rp = 35;
rs = 175;
[n,Wp] = cheb1ord(Wp,Ws,rp,rs);
[b,a] = cheby1(n,rp,Wp,'high');
[h,w]=freqz(b,a); %frequency response
%[h,w]=freqs(b,a); %frequency response
%s and z domain
subplot(2,1,1);
plot((w/2*pi), 20*log10(abs(h)));
title(sprintf('Chebyshev Highpass Filter'));
%xlabel('');
%ylabel('');
subplot(2,1,2);
plot((w/2*pi), angle(h));