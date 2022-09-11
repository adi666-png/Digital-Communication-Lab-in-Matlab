x1=[1,2,3,4]
x2=[1,2,1,2]
n=0:length(x1)-1;
subplot(4,1,1);
stem(n,x1,'linewidth',1.5)
title('Input sequence X1[n]');
ylabel('Amplitude');
xlabel('n->');
subplot(4,1,2);
stem(n,x2,'linewidth',1.5)
title('Input sequence X2[n]');
ylabel('Amplitude');
xlabel('n->');
y=fft(x1);
z=fft(x2);
a=ifft(y.*z)
subplot(4,1,3);
stem(n,a,'linewidth',1.5)
title('circular convolution result');
ylabel('Amplitude');
xlabel('n->');
N1 = length(x1);
N2 = length(x2);
t = [0,1,2,3];
N=max(N1,N2);
w=cconv(x1,x2,N);
subplot(4,1,4)
stem(t,w,'linewidth',1.5)
xlabel('n->');
ylabel('Circular Convolution');
title('Circular Convolution')
