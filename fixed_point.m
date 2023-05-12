function sabit_nokta%fixed point yöntemi
clc;clear all;clf;
%x=2^(-x) , [0,1] buradan kapalı aralıkları ve fonkisyon verilimiştir
%fonksiyonu kullanarak bir g(x) fonkisyonu oluşturmalıyız
xx=linspace(0,1,100);%Soruda verilen aralıkları buraya girin
gx=2.^(-xx);%burayı denkleme göre değiştirin
x0=0;
plot(x0,0,'or');
hold on;
x1=2^(-x0);%burayı denkleme göre değiştirin
plot(x1,0,'or');
line([x0 x0],[0 x1],[1 1],'Marker','*','LineStyle','-','Color','m')
hold on;
it=1;
while abs(x1-x0)>eps
    x0=x1;
    x1=2^(-x0);%burayı denkleme göre değiştirin
    plot(x1,0,'or');
    line([x0 x0],[0 x1],[1 1],'Marker','*','LineStyle','-','Color','m')
    hold on;
    it=it+1;
end
plot(xx,xx,xx,gx);
xlabel('x');
ylabel('y');
title(['Eğrisi ile f(x)=x doğrusunun kesim noktası',num2str(x1)])
fprintf('Eğrisi ile f(x)=x doğrusunun kesim noktası %6.4f dir. iterasyon %6.4f dir.',x1,it)
end
