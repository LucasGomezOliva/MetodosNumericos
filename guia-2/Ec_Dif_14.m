

function Xp = Ec_Dif_14(t,X)
a=2;
b=0.02;
c=0.0002;
d=0.8;
A = [a -b*X(1);c*X(2) -d];
Xp = A*X';
Xp = Xp';