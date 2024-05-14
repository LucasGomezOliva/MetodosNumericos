%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 1 TP#4 M�todos Num�ricos
%%%
%%% Raices de funciones no lineales por M�todo de Bisecci�n (Bolzano)
%%%
%%% function [c,err,y_r] = Bisecci�n_Bolzano(f,a,b,delta)
%%%
%%% Par�metros de Entrada:
%%%
%%%       f = funci�n a calcular el cero. Dise�ada en un script .m
%%%       a = valor inicial del intervalo 
%%%       b = valor final del intervalo 
%%%       delta = error final querido (exactitud del m�todo)
%%%
%%% Par�metros de Salida:
%%%
%%%      c   = ra�z de f(x) para el intervalo [a,b]
%%%      err = error final obtenido al finalizar abs(bn-an)
%%%      y_r = valor de la funci�n en el cero obtenido
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [r,err,y_r] = Biseccion_Bolzano(f,a,b,delta)

if nargin<4
    disp('Debe ingresar f, a, b y delta');
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
N=ceil((log(b-a)-log(delta))/log(2));
for k=1:N
    ck = (ak+bk)/2;  % Punto intermedio del intervalo de bisecci�n
    %[ak ck bk feval(f,ck)] % Tabulaci�n para ver los resultados parciales
    y_ck = feval(f,ck);
    if y_ck==0
        ak=ck;
        bk=ck;
    elseif (y_ak*y_ck)<0
        bk=ck;
    else    
        ak=ck;
        y_ak=y_ck;
    end
end
ck=(ak+bk)/2;
r=ck;
err=abs(bk-ak);
y_r=feval(f,r);