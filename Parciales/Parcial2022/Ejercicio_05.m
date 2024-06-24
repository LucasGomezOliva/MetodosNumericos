close all
clear
clc


X = [1 2 3 12];

Y = [1 4 9 4];

matriz  = InterpolacionLineal( X ,Y );
plot(X,Y,'ro')
grid;
hold;

for k = 1:length(X) - 1
    
    x = X(k):0.2:X(k + 1);
    
    y = matriz(k,1) * x + matriz(k,2);
    
    disp(['Recta es y = ' num2str(matriz(k,1)) ' * x + ' num2str(matriz(k,2))])
    
    plot(x,y,'b')
    
end
