function  r  = Aproximado_Ubicacion_Raices_Reales( f, x0, xf, M, W )
dx=(xf-x0)/M;
Xk=zeros(M);
for k=0:1:(M-1)
    Xk(k+1)=x0+k*dx;
end
cont=1;
for k=2:(M-1)
    pterm = feval(f,Xk(k));
    sterm = feval(f,Xk(k-1));
    if (pterm * sterm) < 0
        disp('Primera Condicion')
        r(cont)=(Xk(k)+Xk(k-1))/2;
        cont=cont+1;
    end
    Pterm = feval(f,Xk(k+1)) - feval(f,Xk(k));
    Sterm = feval(f,Xk(k)) - feval(f,Xk(k-1));
    if ((Pterm * Sterm) < 0) && (abs(feval(f,Xk(k))) < W);
        disp('Segunda Condicion')
        r(cont)=Xk(k);
        cont=cont+1;
    end
end



