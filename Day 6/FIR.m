n = 34;
wn = 0.48;
b = fir1(n,wn,chebwin(n+1, 30));
c = fir1(n,wn);
[h1, w1] = freqz(b);
[h2, w2] = freqz(c);
figure
subplot(2,1,1)
hold on
plot(w1,20*log10(abs(h1)),'r');
plot(w2,20*log10(abs(h2)),'b');
hold off
xlabel('Normalized Frequency');
ylabel('Magnitude in dB');
legend('Chebyshev Window','Hamming Window');
grid
subplot(2,1,2)
hold on
plot(w1,angle(h1),'r');
plot(w2,angle(h2),'b');
hold off
xlabel('Normalized Frequency');
ylabel('Phase');
legend('Chebyshev Window','Hamming Window');
grid