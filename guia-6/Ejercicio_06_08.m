clear
close all
clc

%% Ejercicio A

a=-1;
b=1;
M=100;
RTC = Regla_Trapezoidal_Compuesta('Funcion_06_a',a,b,M);
RST = Regla_Simpson_Compuesta('Funcion_06_a',a,b,M);
disp('Ejercicio A - Regla_Trapezoidal_Compuesta');
RTC
disp('Ejercicio A - Regla_Simpson_Compuesta');
RST

disp('-----------------------------------------')

%% Ejercicio B

a=-0;
b=1;
M=100;
RTC = Regla_Trapezoidal_Compuesta('Funcion_06_b',a,b,M);
RST = Regla_Simpson_Compuesta('Funcion_06_b',a,b,M);
disp('Ejercicio B - Regla_Trapezoidal_Compuesta');
RTC
disp('Ejercicio B - Regla_Simpson_Compuesta');
RST

disp('-----------------------------------------')

%% Ejercicio C

a=1/4;
b=4;
M=100;
RTC = Regla_Trapezoidal_Compuesta('Funcion_06_c',a,b,M);
RST = Regla_Simpson_Compuesta('Funcion_06_c',a,b,M);
disp('Ejercicio c - Regla_Trapezoidal_Compuesta');
RTC
disp('Ejercicio c - Regla_Simpson_Compuesta');
RST

disp('-----------------------------------------')

%% Ejercicio D

a=(1/7).*pi();
b=(1/4).*pi();
M=100;
RTC = Regla_Trapezoidal_Compuesta('Funcion_06_c',a,b,M);
RST = Regla_Simpson_Compuesta('Funcion_06_c',a,b,M);
disp('Ejercicio c - Regla_Trapezoidal_Compuesta');
RTC
disp('Ejercicio c - Regla_Simpson_Compuesta');
RST

disp('-----------------------------------------')

%% Ejercicio E

a=0;
b=4;
M=100;
RTC = Regla_Trapezoidal_Compuesta('Funcion_06_e',a,b,M);
RST = Regla_Simpson_Compuesta('Funcion_06_e',a,b,M);
disp('Ejercicio E - Regla_Trapezoidal_Compuesta');
RTC
disp('Ejercicio E - Regla_Simpson_Compuesta');
RST

disp('-----------------------------------------')

%% Ejercicio F

a=0;
b=pi();
M=100;
RTC = Regla_Trapezoidal_Compuesta('Funcion_06_f',a,b,M);
RST = Regla_Simpson_Compuesta('Funcion_06_f',a,b,M);
disp('Ejercicio F - Regla_Trapezoidal_Compuesta');
RTC
disp('Ejercicio F - Regla_Simpson_Compuesta');
RST

disp('-----------------------------------------')

%% Ejercicio G

a=0;
b=2;
M=100;
RTC = Regla_Trapezoidal_Compuesta('Funcion_06_g',a,b,M);
RST = Regla_Simpson_Compuesta('Funcion_06_g',a,b,M);
disp('Ejercicio G - Regla_Trapezoidal_Compuesta');
RTC
disp('Ejercicio G - Regla_Simpson_Compuesta');
RST

disp('-----------------------------------------')

%% Ejercicio H

a=(1/(5.*pi()))+10^-5;
b=(1/(4.*pi()))-10^-5;
M=100;
RTC = Regla_Trapezoidal_Compuesta('Funcion_06_h',a,b,M);
RST = Regla_Simpson_Compuesta('Funcion_06_h',a,b,M);
disp('Ejercicio H - Regla_Trapezoidal_Compuesta');
RTC
disp('Ejercicio H - Regla_Simpson_Compuesta');
RST