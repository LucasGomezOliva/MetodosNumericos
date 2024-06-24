function matriz  = InterpolacionLineal( X ,Y )

N = length(X);

matriz = zeros(N - 1, 2);

for k = 1:N - 1
    
    matriz(k,1) = (Y(k + 1)- Y(k))/(X(k + 1)- X(k));
    
    matriz(k,2) = Y(k) - matriz(k,1) * X(k);
    
end

