function XC = TransformadaCosenoClase( X )
N = length(X);
XC = zeros(size(X));
for k = 1:N
    for n = 1:N
    XC(k)= XC(k)+ X(n)*cos(pi *(k-1)*(2* (n - 1) + 1)/(2 * N));
    end
    XC(k)=2*XC(k);
end

