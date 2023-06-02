function trapez%trapez yöntemi
clear all;close all;clc;
fprintf('f(x)=(x+1/x)^2 fonksiyonunun trapez yöntemi ile yaklaşık çözümünü bulma\n');
a=1;%sınırları güncelle
b=2;%sınırları güncelle
n=2;%iki sınırı böldüğün parça sayısını güncelle
h=(b-a)/n;
toplam=0;
for x=a:h:b-h
    y=(x+1/x)^2;%verilen denkleme göre güncelle
    toplam=toplam+h/2*((x+1/x)^2+((x+h)+1/(x+h))^2);%verilen denkleme göre güncelle
end
disp(' toplam');
disp([toplam])
end