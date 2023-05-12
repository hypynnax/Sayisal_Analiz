function cramer%cramer yöntemi
clc;clear all;close all;
fprintf('Cramer yöntemi kullanarak 2x+y+z , x-y-z , x+2y+z doğrusal denklemlerinin kökleri\n');
A=[2 1 1;1 -1 -1;1 2 1]%verilen deklemlerdeki değerler
b=[3;0;0]%verilen deklemlerdeki sonuçlar
Ax=[3 1 1;0 -1 -1;0 2 1]%A matrisinin x sütününa b değerlerini gir
Ay=[2 3 1;1 0 -1;1 0 1]%A matrisinin y sütününa b değerlerini gir
Az=[2 1 3;1 -1 0;1 2 0]%A matrisinin z sütününa b değerlerini gir
detA=det(A)
x=det(Ax)/detA
y=det(Ay)/detA
z=det(Az)/detA
end