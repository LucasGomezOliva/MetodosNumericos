%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 4 TP#7 Métodos Numéricos
%%%
%%% Ecuación Diferencial en derivadas parciales Parabólica
%%%
%%%  ECUACIÓN DEL CALOR: Ut(x,t)=c^2*Uxx(x,t)
%%%
%%% function [U,X,T] = Ec_Dif_Var_Parc_Parabólica(f,c1,c2,a,b,c,N,M)
%%%
%%% Parámetros de Entrada:
%%%
%%%   Condiciones Iniciales:  
%%%     f= Nombre de la función U(x,0)=f(x)
%%%     Condiciones de Contorno:
%%%     c1 = U(0,t). Primer condición de contorno
%%%     c2 = U(a,t). Primer condición de contorno
%%%     a = abscisa final de análisis (la inicial por defecto es 0)
%%%     b = tiempo final de análisis (el inicial por defecto es 0)
%%%
%%%     c = Constante de la Ecuación del Calor
%%%   Tamaño de la Matriz resultado:
%%%     N = Número de filas (abscisas x) que contendrá la solución U(x,t)
%%%     M = Número de columnas (tiempos x) que contendrá la solución U(x,t)
%%%
%%% Parámetros de Salida:
%%%
%%%      U = matriz que contiene los la solución de la EDVP U(x,t)
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
% gráficas es al revés pero para nosotros, x son filas y t son columnas

U=zeros(N,M); % inicialización de la Matriz solución. En estos valores están contempladas las
% Condiciones de contorno
U(1,:)=c1;
U(N,:)=c2;
% condiciones de contorno, es decir, U(0,t)=U(a,t)=0 para todos t.

r=c^2*k/h^2 % Constante de convergencia del algoritmo. Recordar que r<1 para asegurar convergencia
% Definición de constantes para cálculos de bucle. Se evitan las
% repeticiones.
s2=1-2*r;
%%%%%%%% Armado de la 1 primera fila (columna si se quiere) de la solución
U(2:N-1,1)=feval(f,X(2:N-1)); % Otra forma de establecer la condición inicial 
%%%%%%%% Armando de las soluciones restantes de la Matriz solución U(x,t)
for j=1:M-1
   for i=2:N-1
       U(i,j+1)=s2*U(i,j)+r*(U(i+1,j)+U(i-1,j));
   end
end