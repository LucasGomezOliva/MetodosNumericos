function [ sol ] = ReglaTrapezoidalSimple( f, t )
M = length(f);
sol = 0;
for k = 1:M - 1
    h = t(k + 1) - t(k);
    sol = sol + ( h./2 ) .* (f(k + 1) + f(k));
end

