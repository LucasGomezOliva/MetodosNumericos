clear
clc

dt = 0.01;






M = [5 20 50 200];
Colors=['b' 'g' 'm' 'k'];
plot(X',Y,'r');
hold on;
for i=1:size(M')
    [T,Y_STF] = Ajuste_Serie_Trig_Fourier(X',Y',M(i));
    plot(T,Y_STF,Colors(i));
    hold on;
end
hold off;