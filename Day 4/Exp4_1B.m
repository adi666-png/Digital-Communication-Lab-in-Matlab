x1= [2 -1 3 7 1 2 -3];
x2=[1 -1 2 -2 4 1 -2 5];
n1=-4:2;
n2=-4:3;
m1=length(x1);
m2=length(x2);
y=xcorr(x1,x2)
n= ceil(-(m1+m2-1)/2):floor((m1+m2-1)/2);
subplot(311)
stem(n1,x1);
xlabel('n');
ylabel('x1');
title('Input Sequence 1');
subplot(312)
stem(n2,x2);
xlabel('n');
ylabel('x2');
title('Input Sequence 2');
subplot(313)
stem(n,y);
xlabel('n');
ylabel('y');
title('Cross-correlation Sequence');