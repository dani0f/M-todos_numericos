function Schroder = Shro(a)
fprintf('a,b,error,iteracion\n');
syms x;
f=input('Ingrese la función: ');
de=diff(f);
dede=diff(f,2);
der=inline(de);%Primera derivada
deder=inline(dede);%Segunda derivada
fu=inline(f);%funcion
iteracion=7;
%T=0.00001;
%E=10;
tic
x1=a;
itera=1;
T=0.0000001;
errores=[1:6];
iteraciones=[1:6];
while(itera~=iteracion)
    x2=x1-((fu(x1)*der(x1))/((der(x1)^2)-fu(x1)*deder(x1)));
    ab1=(abs(x2-x1));
    ab2=(abs(x2));
    error=ab1/ab2;
    errores(itera)=error;
    iteraciones(itera)=itera;
    if ((error)<T)
        fprintf('se encontro sol en');
        error
        itera
        x2
        toc
        plot(errores,iteraciones)
        return
    end
    x1=x2;
    itera=itera+1;
end    
fprintf('iteracion maxima alcanzada');
itera
plot(errores,iteraciones)
toc
end
