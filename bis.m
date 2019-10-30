function Biseccion = bis(a,b)
fprintf('a,b,error,iteracion\n');
f=inline('exp(-1*(x^2))-cos(x)');
iteracion=1;
T=0.00001;
E=10;
tic
po=a;
    while(T<E)
        p=(a+b)/2;
        if f(a)*f(p) < 0
            b=p;
        end
        if f(b)*f(p)< 0
            a=p;
        end
        E=abs(p-po)/abs(p);
        if E<T
            iteracion
            E
            toc
            p
        end
        iteracion=iteracion+1;
        po=p;
        end
end

        