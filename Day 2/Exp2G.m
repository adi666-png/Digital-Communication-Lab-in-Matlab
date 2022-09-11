x = [1,1,1,1,0.5,0.5];
n = -1:1:4;
n1 = 2-n;
figure;
%x(n)
subplot(3,1,1);
stem(n,x);
title('Input Sequence')
xlabel('n');
ylabel('x(n)');
%axis([-8 8 0 2]);

%x(n-1)u(2-n)
n0 = n+1;
n1 = 2-n;
unit = n1>=0;
xu=x.*unit
subplot(3,1,2);
stem(n,x.*unit);
xlabel('n');
ylabel('x(n).u(2-n)');
%axis([-8 8 0 2]);

%x(n-1)d(n-3)
n2 = n0-3;
impulse = n2==0;
xd=x.*impulse
subplot(3,1,3);
stem(n0,x.*impulse);
xlabel('n');
ylabel('x(n-1).d(n-3)');
%axis([-8 8 0 2]);