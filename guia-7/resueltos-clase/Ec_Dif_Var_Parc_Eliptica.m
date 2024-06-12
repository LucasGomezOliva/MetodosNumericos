%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 11 TP#7 Métodos Numéricos
%%%
%%% Ecuación Diferencial en derivadas parciales Elíptica
%%%
%%%  ECUACIÓN DEL Laplaciano: Uxx(x,y)+Uyy(x,y)=0)
%%%
%%% function [U,X,Y] = Ec_Dif_Var_Parc_Eliptica(f1,f2,f3,f4,a,b,h,Tol,Max)
%%%
%%% Parámetros de Entrada:
%%%
%%%   Condiciones de contorno:  
%%%     f1 = U(x,0)
%%%     f2 = U(x,b)
%%%     f3 = U(0,y)
%%%     f4 = U(a,y)
%%%  
%%%     a = abscisa final de análisis (la inicial por defecto es 0)
%%%     b = tiempo final de análisis (el inicial por defecto es 0)
%%%     h = Ax=Ay ancho y alto del box de análisis
%%%
%%%     Tol = El error mínimo permitido para terminar con la iteración
%%%     Max = Número máximo de iteraciones a realizar si no se llega a Tol
%%%
%%% Parámetros de Salida:
%%%
%%%      U = matriz que contiene los la solución de la EDVP U(x,t)
%%%      X = vector conteniendo las abscisas x
%%%      Y = vector que contiene los tiempos t
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [U,X,Y] = Ec_Dif_Var_Parc_Eliptica(f1,f2,f3,f4,a,b,h,Tol,Max)

if nargin<9
    disp('Debe ingresar f1, f2, f3, f4, a, b, h, Tol, Max');
    return;
end

N = floor(a/h)+1; % Cantidad de Filas (x)
M = floor(b/h)+1; % Cantidad de Columnas (t)

X=(0:N-1)'*h;   % Eje de x a devolver
Y=(0:M-1)'*h;   % Eje de t a devolver
% Valor inicial de la Iteración
K = (sum(feval(f1,X(2:N-1)))+sum(feval(f2,X(2:N-1)))+sum(feval(f3,Y(2:M-1)))+sum(feval(f4,Y(2:M-1))))/(2*N+2*M);
U=K*ones(N,M); % inicialización de la Matriz solución.
% Agregado de las conciciones de contorno
U(:,1)=feval(f1,X);
U(:,M)=feval(f2,X);
U(1,:)=feval(f3,Y);
U(N,:)=feval(f4,Y);
U(1,1)=(U(2,1)+U(1,2))/2;
U(1,M)=(U(1,M-1)+U(2,M))/2;
U(N,1)=(U(N-1,1)+U(N,2))/2;
U(N,M)=(U(N,M-1)+U(N-1,M))/2;
% Velocidad de Convergencia
w=4/(2+sqrt(4-(cos(pi/(N-1))+cos(pi/(M-1)))^2));
Error=1;
Cont=0;
while((Error>Tol)&&(Cont<=Max))
    for j=2:M-1
        for i=2:N-1
            Rij=w*(U(i+1,j)+U(i-1,j)+U(i,j+1)+U(i,j-1)-4*U(i,j))/4;
            U(i,j)=U(i,j)+Rij;
            if abs(Rij)<Error
                Error=abs(Rij);
            end
        end
    end
    Cont=Cont+1;
end