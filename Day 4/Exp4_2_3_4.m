nx=-10:10; 
x=sin(nx*2*pi/20); 
x2=fliplr(x); 
y1=conv(x,x2) 
ny1=0:length(y1)-1; 
subplot(3,2,1); 
stem(nx,x); 
xlabel('n'); 
ylabel('x(n)'); 
title('Periodic signal'); 
subplot(3,2,2); 
stem(ny1,y1); 
xlabel('n'); 
ylabel('y1(n)'); 
title('Autocorrelation of Periodic Signal'); 
%Matlab program to find autocorrelation of a noise signal 
x_noisy=awgn(x,5); 
noise=x_noisy-x; 
noise2=fliplr(noise); 
y2=conv(noise,noise2) 
ny2=0:length(y2)-1; 
subplot(3,2,3); 
stem(nx,noise); 
xlabel('n'); 
ylabel('N(n)'); 
title('Noise signal'); 
subplot(3,2,4); 
stem(ny2,y2); 
xlabel('n'); 
ylabel('y2(n)'); 
title('Autocorrelation of Noise Signal'); 
%Matlab program to find autocorrelation of a noisy periodic signal 
x_noisy2=fliplr(x_noisy); 
y3=conv(x_noisy,x_noisy2) 
ny3=0:length(y3)-1; 
subplot(3,2,5); 
stem(nx,x_noisy); 
xlabel('n'); 
ylabel('x(n)+N(n)'); 
title('Corrupted Signal'); 
subplot(3,2,6); 
stem(ny3,y3); 
xlabel('n'); 
ylabel('y3(n)'); 
title('Autocorrelation of Corrupted Signal');