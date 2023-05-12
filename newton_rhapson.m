function newton_rhapson%newton rhapson metodu
clc;clear all;clf;
a=1.6;b=3;%verilen aralıklara göre a ve b yazılmalıdır.
xx=[a:0.01:b];
y=f(xx);
it=1;
x(it)=a;
while abs(f(x(it)))>eps
    if abs(df(x(it)))<eps
        disp('Program fonksiyonun sıfır olmasından dolayı hesaplanamaz!')
        break;
    else
        line([x(it) x(it)-f(x(it))/df(x(it))],[f(x(it)) 0],[1 1],'Marker','*','LineStyle','-','Color','m');
        hold on;
        x(it+1)=x(it)-f(x(it))/df(x(it));
        it=it+1;
    end
end
plot(xx,y);
xlabel('x');
ylabel('y');
title(['Denkleminin kökü',num2str(x(it))])
grid on
fprintf("Denkleminin kökü %6.4f dir. İterasyon %6.4f dir.",x(it),it)
end

function y=f(x)
    y=tan(pi-x)-x;%verilen fonksiyon burada yazılmalıdır.
end

function y=df(x)
    y=-(1+(tan(pi-x)).^2)-1;%verilen fonksiyonun türevi burada yazılmalıdır.
end