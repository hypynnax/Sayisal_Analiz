function simpson%simpson 1/3 yöntemi
clear all;close all;clc;
fprintf('f(x)=(x^3+1) fonksiyonunun simpson yöntemi ile yaklaşık çözümünü bulma\n');
a=-1;%sınırları güncelle
b=3;%sınırları güncelle
n=2;%iki sınırı böldüğün parça sayısını güncelle
h=(b-a)/n;
toplam=0;
for x0=a:h:b-h
    x1=(x0+(x0+h))/2;
    x2=x0+h;
    fx0=(x0^3+1);%verilen denkleme göre güncelle
    fx1=(x1^3+1);%verilen denkleme göre güncelle
    fx2=(x2^3+1);%verilen denkleme göre güncelle
    toplam=toplam+h/6*(fx0+4*fx1+fx2);
end
disp(' toplam');
disp([toplam])
end