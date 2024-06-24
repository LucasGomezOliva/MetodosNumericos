function XC = TransformadaCos( X )
for K = 1:length(X)
    XC(K)= 2.*sum(X(1:length(X)).*cos((pi .*(K-1).*(2.*(0:1:length(X)-1)+1))./(2.*length(X))));
end

