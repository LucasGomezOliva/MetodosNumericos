%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio: 02 Prueba de funcion
%%%
%%% function X = BackSubstitution(A,B)
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

A = zeros(10,10);
B = zeros(10,1);

for i=1:10
    for j=1:10
        if i <= j 
            A(i,j)=cos(i*j);
        end
    end
end

B(1:10,1)=tan(1:10);


A

B

X = BackSubstitution(A,B)

%%% Solucion
%%%     2
%%%    -2
%%%     1
%%%     3