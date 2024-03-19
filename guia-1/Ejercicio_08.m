clear
clc

%% Ejercicio 08-A

Aa=[1,1,1;
    4,2,1;
    9,3,1]             %%   Matriz de 3x3

Ba=[4,7,14]'           %%   Matriz 1x3

disp('Solucion ejercicio 08-A')
Xa = Triang_Gauss(Aa,Ba);
Xa_M=Aa\Ba;
disp('Gauss     |   Matlab')
[Xa,Xa_M]

%% Ejercicio 08-B

Ab=[0,0,0,1;
    1,1,1,1;
    8,4,2,1;
    27,9,3,1]   %%Matriz de 4x4

Bb=[0,1,2,2]'                           %%Matriz de 1x4

disp('Solucion ejercicio 08-B')

Xb = Triang_Gauss(Ab,Bb);
Xb_M=Ab\Bb;
disp('Gauss     |   Matlab')
[Xb,Xb_M]

%% Ejercicio 08-C

Ac=[1,2,0,-1;2,3,-1,0;0,4,2,-5;5,5,2,-4]

Bc=[9,9,26,32]'

disp('Solucion ejercicio 08-C')

Xc = Triang_Gauss(Ac,Bc);
Xc_M=Ac\Bc;

[Xc,Xc_M]

%% Ejercicio 08-D

N = 3;

Ad = zeros(N,N);

Bd = zeros(N,1);

Bd(1,1) = N;

for I=1:1:N
    if(I >= 2)
        Bd(I,1) = (((I^N)-1)/((I^(N-1))*(I-1)));
    end
    
    for J=1:1:N
        Ad(I,J) = I^(-(J-1));
    end
end

Ad
Bd

disp('Solucion ejercicio 08-D')

Xd = Triang_Gauss(Ad,Bd);
Xd_M = Ad\Bd;

[Xd,Xd_M]


