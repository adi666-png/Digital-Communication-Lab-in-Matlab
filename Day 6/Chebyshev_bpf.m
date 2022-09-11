Wp = [0.2 0.7];
Ws = [0.1 0.8];
rp = 20;
rs = 200;
[n,Wp] = cheb1ord(Wp,Ws,rp,rs);
[b,a] = cheby1(n,rp,Wp,'bandpass');
[h,w]=freqz(b,a); %frequency response
%[h,w]=freqs(b,a); %frequency response
%s and z domain
subplot(2,1,1);
plot((w/2*pi), 20*log10(abs(h)));
title(sprintf('Chebyshev Bandpass Filter'));
%xlabel('');
%ylabel('');
subplot(2,1,2);
plot((w/2*pi), angle(h));