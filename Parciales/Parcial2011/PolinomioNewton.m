function [ A ] = PolinomioNewton( X, Y )
A(1)=Y(1);
A(2)=(Y(2)-y(1))/(X(2)-X(1));
A(3)=((Y(3)-y(2))/(X(3)-X(2))- A(1))/(X(3)-X(1));
end

