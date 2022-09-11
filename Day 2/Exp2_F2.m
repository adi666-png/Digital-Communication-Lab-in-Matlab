n=[-2 -1 0 1 2];
y=[-2 1 2 -1 3];
yflip=fliplr(y);
%Input Sequence
subplot(3,2,1);
stem(n,y); 
title('Input Sequence x(n)'); 
xlabel('n'); 
ylabel('x(n)');
%Folding
subplot(3,2,2);
ye = (y+yflip);
stem(n,yflip); 
title('folded sequence x(-n)'); 
xlabel('n'); 
ylabel('x(-n)'); 
%Summing
subplot(3,2,3);
stem(n,ye);
title('x(n)+x(-n)'); 
xlabel('n'); 
ylabel('amplitude');
%Subtracting
yo= (y-yflip);
subplot(3,2,4);
stem(n,yo);
title('x(n)-x(-n)'); 
xlabel('n'); 
ylabel('amplitude');
%Even part
E=[ye/2]
subplot(3,2,5);
stem(n,ye/2);
title('Even Component');
xlabel('n'); 
ylabel('(x(n)+x(-n))/2'); 
%Odd part
O=[yo/2]
subplot(3,2,6);
stem(n,yo/2);
title('Odd Component'); 
xlabel('n'); 
ylabel('(x(n)-x(-n))/2'); 