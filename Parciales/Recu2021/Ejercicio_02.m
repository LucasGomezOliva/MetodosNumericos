close all
clear 
clc

a = 2.5;
b = 0.3;
c = 3.3;
d = 0.4;

t0 = -4;
tf = 4;
h = 0.1;
t = t0:h:tf;

X = (a - b*t.^2).*cos(t);
Y = (c - d*t.^2).*sin(t);


dX = (b*t.^2-a).*sin(t) - 2*b*t.*cos(t);
dY = (c-d*t.^2).*cos(t) - 2*d*t.*sin(t);

f = sqrt((dX).^2+(dY).^2);

sol = ReglaTrapezoidalSimple( f, t );

disp(['La longitud del pretzel es de: ', num2str(sol)]);

H1=figure(1);
set(H1,'position',[40 20 700 800],'Menubar','none',...
   'NumberTitle','off','name',...
   'Métodos Numéricos: Longitud de un Pretzel');

plot(X,Y,'b')
title('Longitud del Pretzel')
xlabel('X ( t )')
ylabel('Y ( t )')
grid;

