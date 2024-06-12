%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 4 TP#7 M�todos Num�ricos
%%%
%%% Ecuaci�n Diferencial en derivadas parciales Parab�lica
%%%
%%%  ECUACI�N DEL CALOR: Ut(x,t)=c^2*Uxx(x,t)
%%%
%%% function [U,X,T] = Ec_Dif_Var_Parc_Parab�lica(f,c1,c2,a,b,c,N,M)
%%%
%%% Par�metros de Entrada:
%%%
%%%   Condiciones Iniciales:  
%%%     f= Nombre de la funci�n U(x,0)=f(x)
%%%     Condiciones de Contorno:
%%%     c1 = U(0,t). Primer condici�n de contorno
%%%     c2 = U(a,t). Primer condici�n de contorno
%%%     a = abscisa final de an�lisis (la inicial por defecto es 0)
%%%     b = tiempo final de an�lisis (el inicial por defecto es 0)
%%%
%%%     c = Constante de la Ecuaci�n del Calor
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

function [U,X,T] = Ec_Dif_Var_Parc_Parabolica(f,c1,c2,a,b,c,N,M)

if nargin<8
    disp('Debe ingresar f(x), c1, c2, a, b, c y cantidad de filas y columnas N y M respectivamente');
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
% Condiciones de contorno
U(1,:)=c1;
U(N,:)=c2;
% condiciones de contorno, es decir, U(0,t)=U(a,t)=0 para todos t.

r=c^2*k/h^2 % Constante de convergencia del algoritmo. Recordar que r<1 para asegurar convergencia
% Definici�n de constantes para c�lculos de bucle. Se evitan las
% repeticiones.
s2=1-2*r;
%%%%%%%% Armado de la 1 primera fila (columna si se quiere) de la soluci�n
U(2:N-1,1)=feval(f,X(2:N-1)); % Otra forma de establecer la condici�n inicial 
%%%%%%%% Armando de las soluciones restantes de la Matriz soluci�n U(x,t)
for j=1:M-1
   for i=2:N-1
       U(i,j+1)=s2*U(i,j)+r*(U(i+1,j)+U(i-1,j));
   end
end