x=[0 1 2 3];
D=fft(x);
I=ifft(D);
A=abs(D);
a=angle(D);
m=0:3;
subplot(4,1,1);
stem(m,x);
title('Input sequence')
ylabel('x');
xlabel('n');
subplot(4,1,2);
stem(m,A);
title('Magnitude Plot')
ylabel('|X(k)|');
xlabel('k');
subplot(4,1,3);
stem(m,a);
title('Phase Plot')
ylabel('<X(k)');
xlabel('k');
subplot(4,1,4);
stem(m,I);
title('Inverse DFT')
ylabel('x');
xlabel('n');