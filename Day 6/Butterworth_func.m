Wp = 0.2;
Ws = 0.1;
rp = 2;
rs = 10;
[n,Wn] = buttord(Wp,Ws,rp,rs);
[b,a] = butter(n,Wn,'high');
[h,w]=freqz(b,a); %frequency response
%[h,w]=freqs(b,a); %frequency response
%s and z domain
subplot(2,1,1);
plot((w/2*pi), 20*log10(abs(h)));
title(sprintf('Butterworth Highpass Filter'));
%xlabel('');
%ylabel('');
subplot(2,1,2);
plot((w/2*pi), angle(h));