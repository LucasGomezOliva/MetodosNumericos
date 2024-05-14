%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 2 TP#4 M�todos Num�ricos
%%%
%%% Raices de funciones no lineales por M�todo de Bisecci�n (Bolzano)
%%%
%%% function [c,err,y_r,M] = Falsa_Posicion_Modificado(f,a,b,epsilon,Max)
%%%
%%% Par�metros de Entrada:
%%%
%%%       f = funci�n a calcular el cero. Dise�ada en un script .m
%%%       a = valor inicial del intervalo 
%%%       b = valor final del intervalo 
%%%       epsilon = m�nimo valor aceptado de la funci�n en el cero obtenido
%%%       Max = m�ximo n�mero de iteraciones a realizar
%%%
%%% Par�metros de Salida:
%%%
%%%      c   = ra�z de f(x) para el intervalo [a,b]
%%%      err = error final obtenido al finalizar abs(bn-an)
%%%      y_r = valor de la funci�n en el cero obtenido
%%%      M   = matriz que contiene las iteraciones de [k ak ck bk f(ck)]
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [r,err,y_r,M] = Falsa_Posicion_Modificado(f,a,b,epsilon,Max)

if nargin<5
    disp('Debe ingresar f, a, b, epsilon y Max');
    return;
end

ak=a;   % valores iniciales de los intervalos de bisecci�n
bk=b;
y_ak = feval(f,ak);
y_bk = feval(f,bk);
if (y_ak*y_bk)>0
    disp('No existe raiz en el intervalo ingresado. Pruebe con otro intervalo');
    return
end
M1=zeros(Max,5);
k = 0;
y_ck = 1;
while (k<Max)&&(abs(y_ck)>epsilon)
    k = k + 1;
    dx=y_bk*(bk-ak)/(y_bk-y_ak);    % sustraendo del c�lculo de ck
    ck = bk - dx;  % Punto de Falsa posici�n
    M1(k,:)=[k ak ck bk feval(f,ck)]; % Tabulaci�n para ver los resultados parciales
    y_ck = feval(f,ck);
    if y_ck==0
        disp('Se lleg� a la ra�z');
    elseif (y_ak*y_ck)<0
        bk=ck;
        y_bk=y_ck;
    else    
        ak=ck;
        y_ak=y_ck;
    end
end
M=M1(1:k,:);
r=ck;
err=min([abs(bk-ck)/2 abs(ak-ck)/2]);
y_r=feval(f,r);