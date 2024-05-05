%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Function X = BackSubstitution(A,B)
%%%
%%% Parámetros de Entrada:
%%%
%%%    A = Matriz Triangular Superion   N * N
%%%    B = Vector Independiente         N * 1
%%%
%%% Parámetro de Salida
%%%
%%%      X = Vector Solución de AX = B  N * 1
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function X = BackSubstitution(A,B)

%%% Reviso que determinate sea distinto de cero

if det(A) == 0
    return
end

%%% Reviso que la matriz M sea cuadrada

[N,M] = size(A);
if not (N == M)
    return
end

X = zeros(N,1);

%%% Calculo X(N)

X(N) = B(N) / A(N,N);

%%% Calculo X(k)

for i = 1 : (N-1)
k = N-i;
suma = 0;
for j = (k+1) : N
    suma = suma + A(k,j) * X(j);
end
X(k) = (B(k) - suma) / A(k,k); 
end

