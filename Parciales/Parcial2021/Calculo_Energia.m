function E  = Calculo_Energia( T, P )
M = length(P);
E = 0;
for k = 1:(M-1)
    H = (T(k + 1)- T(k))/2;
    E = E +  H*(P(k+1)+ P(k));
end
