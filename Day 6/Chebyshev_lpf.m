Ws = 0.2;
Wp = 0.1;
rp = 35;
rs = 800;
[n,Wp] = cheb1ord(Wp,Ws,rp,rs);
[b,a] = cheby1(n,rp,Wp,'low');
[h,w]=freqz(b,a); %frequency response
%[h,w]=freqs(b,a); %frequency response
%s and z domain
subplot(2,1,1);
plot((w/2*pi), 20*log10(abs(h)));
title(sprintf('Chebyshev Lowpass Filter'));
%xlabel('');
%ylabel('');
subplot(2,1,2);
plot((w/2*pi), angle(h));