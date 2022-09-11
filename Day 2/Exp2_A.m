x1=[2 2 1 2];

x2=[-2 -1 3 2];

%Input sequences

n=0:3;

subplot(5,1,1);

stem(n,x1);

title('Input Sequence 1');

xlabel('n');

ylabel('x1(n)');

subplot(5,1,2);

stem(n,x2);

title('Input Sequence 2');

xlabel('n');

ylabel('x2(n)');

% Addition

n1=0:3;

subplot(5,1,3);

y1=x1+x2;

stem(n1,y1)

title('Addition');

xlabel('n');

ylabel('x1(n)+x2(n)');

% Subtraction

n2=0:3;

subplot(5,1,4);

y2=x1-x2;

stem(n2,y2)

title('Subtraction');

xlabel('n');

ylabel('x1(n)-x2(n)');

% Multiplication

n3=0:3;

subplot(5,1,5);

y3=x1.*x2;

stem(n3,y3)

title('Multiplication');

xlabel('n');

ylabel('x1(n).x2(n)');
