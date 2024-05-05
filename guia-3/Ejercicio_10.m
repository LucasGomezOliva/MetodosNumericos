clear;
clc;

Tiempo=1:12;
GradosPM = [18.9 18.9 18.3 17.7 17.2 17.2 16.7 16.1 15.5 15.5 15 14.4];
GradosAM = [14.4 14.4 14.4 14.4 13.8 13.8 13.8 14.4 15.5 17.7 19.4 20.0]; 
M=9;
figure(1);
[T,Y_STF] = Ajuste_Serie_Trig_Fourier(Tiempo',GradosPM',M);
subplot(2,1,1);
plot(Tiempo, GradosPM,'ro', T,Y_STF,'b');
ylabel('Grados')
xlabel('Tiempo Pm')
[T,Y_STF] = Ajuste_Serie_Trig_Fourier(Tiempo',GradosAM',M);
subplot(2,1,2);
plot(Tiempo, GradosAM,'ro', T,Y_STF,'b');
ylabel('Grados')
xlabel('Tiempo Am')