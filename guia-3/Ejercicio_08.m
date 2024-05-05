clear;
clc;

figure(1);
Xa=[-2 -1 0 1 2];
Ya=[-5.8 1.1 3.8 3.3 -1.5];
[C] = Ajuste_Polinomial(Xa,Ya,2);
Ypol = zeros(size(Xa));
for j=1:length(Xa)
    Ypol(j)=Eval_Polinomio_Rapida(Xa(j),C);
end
plot(Xa,Ya,'ro',Xa,Ypol,'b');
grid;

figure(2);
Xb=[-2 -1 0 1 2];
Yb=[2.8 2.1 3.25 6.0 11.5];
[C] = Ajuste_Polinomial(Xb,Yb,2);
Ypol = zeros(size(Xb));
for j=1:length(Xb)
    Ypol(j)=Eval_Polinomio_Rapida(Xb(j),C);
end
plot(Xb,Yb,'ro',Xa,Ypol,'b');
grid;

figure(3);
Xc=[-2 -1 0 1 2];
Yc=[10 1 0 2 9];
[C] = Ajuste_Polinomial(Xc,Yc,2);
Ypol = zeros(size(Xc));
for j=1:length(Xc)
    Ypol(j)=Eval_Polinomio_Rapida(Xc(j),C);
end
plot(Xc,Yc,'ro',Xa,Ypol,'b');
grid;