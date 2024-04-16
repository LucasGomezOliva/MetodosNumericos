

function Xp = Ec_Dif_13c(t,X)
A = [1 -4;1 1];
Xp = A*X';
Xp = Xp';