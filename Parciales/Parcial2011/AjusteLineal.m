function [ A, B ] = AjusteLineal( X, Y )

XPROM = mean(X);
YPROM = mean(Y);

XY = (X-XPROM)'*(Y-YPROM);
XX = (X-XPROM)'*(X-XPROM);

A = XY/XX;

B = YPROM - A.*XPROM; 

end

