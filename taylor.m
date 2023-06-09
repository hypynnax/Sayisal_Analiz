function taylor%taylor serisi
clear all;close all;clc;
x=-2:0.1:2;%aralığı güncelle
y=exp(x);%denklemi güncelle
fig=figure();
set(fig, 'color', 'white')
plot(x, y, 'LineWidth', 2)
grid on
xlabel('x')
ylabel('y')
N=1;%adım sayısını güncelle
tay=0*y;
for n=0:N
    tay=tay+(x.^n)/factorial(n);
end
hold on
plot(x, tay, 'r-', 'LineWidth', 2)
legend('fonkisyon', 'Taylor Serisi')
end