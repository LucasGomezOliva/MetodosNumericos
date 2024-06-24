function [ sol ] = Factorial( M )
sol = M;
for k=1:M-1
    sol = sol*(M-k); 
end
if M == 0
    sol=1;
end

