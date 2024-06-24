function [ sol ] = Potencia( X, M )
sol = X;
for k=1:M-1
    sol = sol * X; 
end

