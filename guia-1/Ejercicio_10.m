clear
clc

%% Ejercicio 10-A

Aa=[1,2,0,0;2,3,-1,0;0,4,2,-5;0,0,2,-4]

Ba=[9,9,26,32]'

disp('Solucion ejercicio 10-A')

Xb=Sol_Sist_Tridiag(Aa,Ba)

%% Ejercicio 10-B

Ab=[1,-2,0,0,0;2,4,-1,0,0;0,4,1,2,0;0,0,2,-1,3;0,0,0,1,-2]

Bb=[2,5,8,-3,1]'

disp('Solucion ejercicio 10-B')

Xa=Sol_Sist_Tridiag(Ab,Bb)

%% Ejercicio 10-C

Ac=[1,-1,0,0,0;-2,-2,-2,0,0;0,3,-3,3,0;0,0,2,-2,2;0,0,0,-1,1]

Bc=[1,1,1,1,1]'

disp('Solucion ejercicio 10-C')

Xc=Sol_Sist_Tridiag(Ac,Bc);
Xc_M=Ac\Bc;
[Xc,Xc_M]
