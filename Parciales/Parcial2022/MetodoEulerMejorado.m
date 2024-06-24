function [ y_sol, t ] = MetodoEulerMejorado(f, t0 ,tf ,y0, M )

h = (tf-t0)/M;

t = t0:h:tf;

y_sol(t0)=y0;

for k = 1:M
    
    ymk = y_sol(k)+(h/2).*feval(f,t(k),y_sol(k));
    
    y_sol(k+1) = y_sol(k)+h.*feval(f,t(k)+(h/2),ymk);
    
end

