clear
clc

%% Ejercicio 08-A

Aa=[]

Ba=[]

disp('Solucion ejercicio 08-A')

%%Xa = Triang_Gauss_Inf(Aa,Ba)

%% Ejercicio 08-B

Ab=[]

Bb=[]

disp('Solucion ejercicio 08-B')

%%Xa = Triang_Gauss_Inf(Ab,Bb)

%% Ejercicio 08-C

Ac=[1,2,0,-1;2,3,-1,0;0,4,2,-5;5,5,2,-4]

Bc=[9,9,26,32]'

disp('Solucion ejercicio 08-C')

%%Xb = Triang_Gauss_Inf(Ac,Bc)

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

%%Xd = Triang_Gauss_Inf(Ad,Bd)


