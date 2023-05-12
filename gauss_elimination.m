function gauss_elimination%gauss elimination/jordan yöntemi
clc;clear all;close all;
fprintf('Gauss-Elimination yöntemi kullanarak 2x+8y+2z=14 , x+6y-z=13 , 2x-y+2z=5 doğrusal denklemlerinin kökleri\n');
A=[2 8 2;1 6 -1;2 -1 2];%verilen deklemlerdeki değerler
b=[14;13;5]%verilen deklemlerdeki sonuçlar
[n, ~]=size(A);
x=zeros(n, 1);
A
for i=1:n-1
    m=A(i+1:n, i)/A(i, i)
    A(i+1:n, :)=A(i+1:n, :)-m*A(i, :)
    b(i+1:n, :)=b(i+1:n, :)-m*b(i, :)
end

x(n, :)=b(n, :)/A(n, n);
for i=n-1:-1:1
    x(i, :)=(b(i, :)-A(i, i+1:n)*x(i+1:n, :))/A(i, i);
end
x
end