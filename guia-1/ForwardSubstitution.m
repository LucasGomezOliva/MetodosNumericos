%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Function X = ForwardSubstitution(A,B)
%%%
%%% Parámetros de Entrada:
%%%
%%%    A = Matriz Triangular Inferior   N * N
%%%    B = Vector Independiente         N * 1
%%%
%%% Parámetro de Salida
%%%
%%%      X = Vector Solución de AX = B  N * 1
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function X = ForwardSubstitution(A, B)
if det(A)==0
    return
end
[N,M] = size(A);
if not (N == M)
    return
end
X=zeros(N,1);
X(1)= B(1)/A(1,1);
for k=2:N
X(k)=(B(k)- A(k,1:1:k-1)*X(1:1:k-1)/A(k,k));
end
