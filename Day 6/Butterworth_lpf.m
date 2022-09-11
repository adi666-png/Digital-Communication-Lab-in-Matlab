Wp = 0.1;
Ws = 0.2;
rp = 2;
rs = 10;
[n,Wn] = buttord(Wp,Ws,rp,rs);
[b,a] = butter(n,Wn,'low');
[h,w]=freqz(b,a); %frequency response
%[h,w]=freqs(b,a); %frequency response
%s and z domain
subplot(2,1,1);
plot((w/2*pi), 20*log10(abs(h)));
title(sprintf('Butterworth Lowpass Filter'));
%xlabel('');
%ylabel('');
subplot(2,1,2);
plot((w/2*pi), angle(h));