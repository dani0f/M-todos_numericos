function Secante = Sec(a,b)
f=inline('exp(-1*(x^2))-cos(x)');
iteracion=1;
T=0.00001;
E=10;
tic
x0=a;
x1=b;
    while(T<E)
        x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
        E=abs((x2)-(x1))/abs(x2);
        if E<T
            iteracion 
            E
            toc
            sol=x2 
        end
        iteracion=iteracion+1;
        x0=x1;
        x1=x2;
    end
end

        