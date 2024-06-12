%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 1 TP#7 M�todos Num�ricos
%%%
%%% Ecuaci�n Diferencial en derivadas parciales Hiperb�lica
%%%
%%%  ECUACI�N DE ONDA: Utt(x,t)=c^2*Uxx(x,t)
%%%
%%% function [U,X,T] = Ec_Dif_Var_Parc_Hiperbolica(f,g,a,b,c,N,M)
%%%
%%% Par�metros de Entrada:
%%%
%%%   Condiciones Iniciales:  
%%%     f= Nombre de la funci�n U(x,0)=f(x)
%%%     g = Nombre de la funci�n Ut(x,0)=g(x)
%%%   Condiciones de Contorno:
%%%     a = abscisa final de an�lisis (la inicial por defecto es 0)
%%%     b = tiempo final de an�lisis (el inicial por defecto es 0)
%%%
%%%     c = Velocidad de la onda (m/s)
%%%   Tama�o de la Matriz resultado:
%%%     N = N�mero de filas (abscisas x) que contendr� la soluci�n U(x,t)
%%%     M = N�mero de columnas (tiempos x) que contendr� la soluci�n U(x,t)
%%%
%%% Par�metros de Salida:
%%%
%%%      U = matriz que contiene los la soluci�n de la EDVP U(x,t)
%%%      X = vector conteniendo las abscisas x
%%%      T = vector que contiene los tiempos t
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [U,X,T] = Ec_Dif_Var_Parc_Hiperbolica(f,g,a,b,c,N,M)
 
if nargin<7
    disp('Debe ingresar f(x), g(x), a, b, y cantidad de filas, c y columnas N y M respectivamente');
    return;
end
 
h = (a-0)/(N-1); % Delta X, Ax
k = (b-0)/(M-1); % Datla t, At
 
X=(0:N-1)'*h;   % Eje de x a devolver
T=(0:M-1)'*k;   % Eje de t a devolver
 
% Por comodidad, U(x,t)=Ui,j con lo que i corresponde a x y j corresponde
% a t. Para ello, x(i) es fila y t(j) es columna. En las explicaciones
% gr�ficas es al rev�s pero para nosotros, x son filas y t son columnas
 
U=zeros(N,M); % inicializaci�n de la Matriz soluci�n. En estos valores est�n contempladas las
% condiciones de contorno, es decir, U(0,t)=U(a,t)=0 para todos t.
 
r=c*k/h; % Constante de convergencia del algoritmo. Recordar que r<1 para asegurar convergencia
% Definici�n de constantes para c�lculos de bucle. Se evitan las
% repeticiones.
r2=r^2;
r22=r^2/2;
s1=1-r^2;
s2=2-2*r^2;
%%%%%%%% Armado de las 2 primeras Columnas de la soluci�n
for i=2:N-1  % Ya que fila 
    U(i,1)=feval(f,X(i));   % U(x,0)=f(x)
    U(i,2)=s1*feval(f,X(i))+k*feval(g,X(i))+r22*(feval(f,i*h)+feval(f,X(i-1))); 
end
%%%%%%%% Armando de las soluciones restantes de la Matriz soluci�n U(x,t)
for j=2:M-1
   for i=2:N-1
       U(i,j+1)=s2*U(i,j)+r2*(U(i+1,j)+U(i-1,j))-U(i,j-1);
   end
end