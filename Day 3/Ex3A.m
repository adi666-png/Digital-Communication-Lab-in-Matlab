h = [1 2 1 -1];
n = -1:2;
x = [1 2 3 1];
n1 = 0:3;
l = -1; %lower limit of output sequence
u = 5; %upper limit of output sequence
a = l:1:u;
m=length(x);
t = length(h);
subplot(3,1,1)
stem(n1,x);
xlabel('n');
ylabel('x(n)');
title('First Sequence');
subplot(3,1,2)
stem(n,h);
xlabel('n');
ylabel('h(n)');
title('Second Sequence');
X =[x, zeros(1,t)];
H =[h, zeros(1,m)];
for i=1:(m+t-1)
Y(i)=0;
for j=1:m
if((i-j+1)>0)
Y(i) = Y(i)+(X(j)*H(i-j+1));
else
end
end
end
display(a)
display(Y)
subplot(3,1,3)
stem(a,Y);
xlabel('n');
ylabel('y(n)');
title('Convoluted Sequence')