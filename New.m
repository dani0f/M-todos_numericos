function Newton = New(a)
fprintf('a,b,error,iteracion\n');
syms x;
f=input('Ingrese la función: ');
de=diff(f);
der=inline(de);
fu=inline(f);
iteracion=1;
T=0.00001;
E=10;
tic
xo=a;
while(T<E)
    xi=xo-(fu(xo)/der(xo));
    E=abs((xi)-(xo))/abs(xi);
    if T>E
        iteracion 
        E
        toc
        xo
    end
    xo=xi;
    iteracion=iteracion+1;
end
end
        