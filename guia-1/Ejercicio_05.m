%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio: 05 Prueba de funcion
%%%
%%% function X = ForwardSubstitution(A,B)
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

%%% Matrices ejerccio 03-A

L = zeros(20,20);

B = zeros(20,1);

for i=1:1:20
    for j=1:1:20
        if i >= j 
            L(i,j)=i+j;
        end
    end
end

B(1:20,1)=1:20;

L

B

disp('Solucion');
X = ForwardSubstitution(L,B)
