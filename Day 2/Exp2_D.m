x=[1 2 3]; 
n=[0 1 2]; 
subplot(3,2,1); 
stem(n,x); 
title('Input Sequence x(n)'); 
xlabel('n'); ylabel('x(n)'); 
n1=-fliplr(n)
n1(length(n1))=[]; 
n2=[n1 n]; 
x1= zeros(1, length(n2));
i=find(n2==min(n));
x1(i:length(x1))=x; 
y=fliplr(x1); 
subplot(3,2,2); 
stem(n2,y); 
title('folded sequence x(-n)'); 
xlabel('n'); 
ylabel('x(-n)'); 
%Addition 
xe1=(x1+y); 
subplot(3,2,3); 
stem(n2,xe1); 
title('x(n)+x(-n)'); 
xlabel('n'); 
ylabel('amplitude'); 
%Subtraction 
xo1=(x1-y); 
subplot(3,2,4); 
stem(n2,xo1); 
title('x(n)-x(-n)'); 
xlabel('n'); 
ylabel('amplitude'); 
%Even Component 
xe1=0.5*(x1+y); 
subplot(3,2,5); 
stem(n2,xe1); 
title('Even Component'); 
xlabel('n'); 
ylabel('(x(n)+x(-n))/2'); 
%Odd Component 
xo1=0.5*(x1-y); 
subplot(3,2,6); 
stem(n2,xo1); 
title('Odd Component'); 
xlabel('n'); 
ylabel('(x(n)-x(-n))/2')