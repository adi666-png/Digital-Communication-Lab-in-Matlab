x= [1 2 3 4];
n=0:3;
y=xcorr(x,x)
n1= 0:6;
subplot(211)
stem(n,x);
xlabel('n');
ylabel('x');
title('Original Sequence');
subplot(212)
stem(n1,y);
xlabel('n');
ylabel('y');
title('Autocorrelation Sequence');