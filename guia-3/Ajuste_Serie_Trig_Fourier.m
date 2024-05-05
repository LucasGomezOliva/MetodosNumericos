%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio Nro. 9 TP#3 M�todos Num�ricos
%%%
%%% Aproximaci�n Lineal por Serie Trigonom�trica de Fourier:
%%%
%%%         y = a0/2 + Sum(ak*cos(kw0t)+bk*sen(kw0t))
%%%
%%% function [T,Y_STF] = Ajuste_Serie_Trig_Fourier(t,Y,M)
%%%
%%% Par�metros de Entrada:
%%%
%%%       t = Vector de Tiempos Nx1 correspondiente a Y (si se necesitara graficar)
%%%       Y = vector Nx1 con la se�al peri�dica (de un per�odo) a aproximar por STF
%%%       M = Orden del polinomio de Fourier a aproximar y(t)
%%%
%%% Par�metros de Salida:
%%%
%%%      T = vector de tiempos de an�lisis (Vector Columna)
%%%      Y = Se�al aproximada por Serie Trigonom�trica de Fourier (Vector Columna)
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [T,Y_STF] = Ajuste_Serie_Trig_Fourier(t,Y,M)

if nargin<3
    disp('Debe ingresar t, Y(t) y M');
    return;
end

N=length(Y);        % Longitud de la se�al a aproximar
n=0:N-1;            % Discretizaci�n natural del eje temporal
Matriz=zeros(M,N);
for k=1:M
    ak = (2/N)* cos (2*pi*n*k/N)*Y;
    bk = (2/N)* sin (2*pi*n*k/N)*Y;
    Matriz(k,:)= ak * cos(2*pi*n*k/N) + bk * sin(2*pi*n*k/N);
end
a02=mean(Y);
Y_STF = a02 + sum(Matriz);   % Serie Trigonom�trica de Fourier, orden M
T=t;