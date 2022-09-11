n=[-1:2]; 
h=[1 2 1 -1]; 
subplot(3,1,1); 
stem(n,h);
title('Impulse response'); 
xlabel('n'); 
ylabel('h(n)'); 
n=[0:3]; 
x=[1 2 3 1]; 
subplot(3,1,2); 
stem(n,x);
title('Excitation'); 
xlabel('n');
ylabel('x(n)'); 
y=conv(h,x);
n=[-1:5]; 
subplot(3,1,3); 
stem(n,y);
display(n)
display(y)
axis([-1 5 -1 8]); 
title('convolved signal'); 
xlabel('n'); 
ylabel('y(n)');