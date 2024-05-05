clear
clc

DSol= [57.59 108.11 149.57 227.84 778.14 1427.0 2870.3 4499.9 5909.0];

PSid = [87.99 224.7 365.26 686.98 4332.4 10759 30684 60188 90710];

X=log(DSol);

Y=log(PSid);


[A,B,CC] = Ajuste_Lineal_MC(X',Y');


disp('Pendiente del ajuste lineal:')
A
disp('Ordenada al origen del ajuste lineal:')
B
disp('Coeficiente de Correlación del ajuste lineal:')
CC

alfa=exp(B)

beta=A

ypen=alfa*DSol.^beta

plot(DSol,PSid,'bo',DSol,ypen,'r');