function runge_kutta%runge kutta yöntemi
clear all; close all;clc;
y0=2;%y'nin ilk değerini verilen değer olarak güncelle
h=0.5;%h değerini soruda verilen değer olarak güncelle
n=2;%soruda verilen değer olarak güncelle
for x0=0:h:n*h
    k1=h*(x0+y0);
    k2=h*(x0+0.5*h+y0+k1*0.5);
    y1=y0+k2;
    plot(x0, y0,'--r*');
    hold on
    grid on
    xlabel('x0');
    ylabel('y0');
    y0=y1
end
end