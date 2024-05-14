clear
clc
p0 = 2.6;
p1 = 2.5;
tp1=1;
w=0.00001;
Max=20;
disp('Ejercicio A')
r  = Metodo_Secante('Funcion_11a',p0,p1, tp1, w ,Max)
disp('Ejercicio B')
p0 = 1.7;
p1 = 1.67;
r  = Metodo_Secante('Funcion_11b',p0,p1, tp1, w ,Max)
disp('Ejercicio C')
p0 = -1.5;
p1 = -1.52;
r  = Metodo_Secante('Funcion_11c',p0,p1, tp1, w ,Max)