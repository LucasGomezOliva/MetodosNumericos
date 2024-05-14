function r  = Metodo_Secante( f,p0,p1, tp1,w ,Max)
pk(1) = p0;
pk(2) = p1;
for k=2:1:Max-1
    num = (pk(k)-pk(k-1)).*feval(f,pk(k));
    den = feval(f,pk(k)) - feval(f,pk(k-1)); 
    pk(k+1)= pk(k) - (num / den);
    if feval(f,pk(k+1))< w
        r=pk(k);
        break;
    end
end

end

