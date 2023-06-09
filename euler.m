function euler%euler yöntemi
clear all;close all;clc;
fprintf('dy/dx+x-y=0 fonksiyonun Euler yöntemi ile yaklaşık çözümünü bulma\n');%fonksiyonu soruya göre güncelle
h=0.25;%h değerini soruya göre güncelle
y0=1;%y'nin ilk değerini soruya göre güncelle
x0=0;
for i=0.0.25:1-0.25
    x1=x0+h;
    s0=-x0+y0;
    y1=y0+h*s0;
    x0=x1;
    y0=y1;
    plot(x0, y0, '--r*');
    hold on
    grid on
end
end