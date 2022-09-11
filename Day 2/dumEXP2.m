x=[1,1,1,1,0.5,0.5];
n=[-1:1:4];
% Defining Parameters
n0=n-1;
x1=stem(n0,x);
n1 = 2-n;
n2 = n-3;
u = n1>0;
d = n2==0;

figure;
subplot(3,1,1);stem(x,'-b^');title('Input Sequence');
xlabel('n');ylabel('x(n)');grid on;

subplot(3,1,2);stem(x1*u,'-b^');title('Multiplication');
xlabel('n');ylabel('x(n).u(2-n)');grid on;

subplot(3,1,3);stem(x1*d,'-b^');title('Multiplication');
xlabel('n');ylabel('x(n-1).d(n-3)');grid on;