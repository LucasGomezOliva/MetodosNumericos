%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 1 TP#6 M�todos Num�ricos
%%%
%%% Aproximaci�n central de derivada de orden cuadr�tico
%%%
%%% function [D,err,relerr,n] = Extrapolacion_Richardson_O2n(f,x,Delta,Tol)
%%%
%%% Par�metros de Entrada:
%%%
%%%       f = Nombre de la funci�n a derivar (almacenada en un .m)
%%%       x = abscisa donde se evaluar� la derivada
%%%       Delta = Tolerancia del Error para las aproximaciones k-�simas de la
%%%       derivada    
%%%       Tol = Tolerancia del Error Relativo para las aproximaciones k-�simas de la
%%%       derivada
%%%
%%% Par�metros de Salida:
%%%
%%%       D =  matriz que contiene las aproximaciones de orden 2k en la
%%%       diagonal principal
%%%       err = error absoluto final
%%%       relerr = error relativo final
%%%       n = el valor de k en donde se produce la mejor aproximaci�n de la
%%%       derivada
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [D,err,relerr,n] = Extrapolacion_Richardson_O2n(f,x,Delta,Tol)

if nargin<4
    disp('Debe ingresar el nombre de la funci�n, la abscisa de derivaci�n el error absoluto y la tolerancia de error relativo');
    return;
end

Max = 15;
h = 1;
err = 1;
relerr = 1;
j = 1;
D(1,1) = (feval(f,x+h)-feval(f,x-h))/(2*h);   % este es el D0(h)
while (err > Delta) && (relerr > Tol) && (j <= Max)
    h = h/2;
    D(j+1,1) = (feval(f,x+h)-feval(f,x-h))/(2*h);
    for k=1:j
       D(j+1,k+1) = D(j+1,k)+(D(j+1,k)-D(j,k))/((4^k)-1);
    end
    err = abs(D(j+1,j+1)-D(j,j));
    relerr = 2 * err / (abs(D(j+1,k+1))+abs(D(j,k))+eps);
    j = j+1;
end
n = size(D,1)-1;