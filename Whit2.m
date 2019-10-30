function Whittaker2 = Whit2(a)
fprintf('a,b,error,iteracion\n');
syms x;
f=input('Ingrese la función: ');
de=diff(f);
dede=diff(f,2);
der=inline(de)%Primera derivada
deder=inline(dede)%Segunda derivada
fu=inline(f)%funcion
iteracion=100;
T=10^-6;
%E=10;
tic
xi=a;
itera=1;
errores=[1:10];
iteraciones=[1:10];
fprintf('\n %2s %12s %22s %32s \n ','I','Xn','Xn+1','E');
while(itera~=iteracion)
    x=xi-(fu(xi)/(2*der(xi)))*(2-((fu(xi)*deder(xi))/((der(xi))^2)));
    ab1=(abs(x-xi));
    ab2=(abs(x));
    crit=ab1/ab2;
    fprintf('\n %2s %12s %22s %32s \n ' ,itera,xi,x,crit);
    errores(itera)=(ab1/ab2);
    iteraciones(itera)=itera;
    if (fu(xi)==0)
        fprintf('se encontro sol en');
        itera
        xi
        x
        plot(errores,iteraciones)
        toc
        return
    end 
    if (crit<T)
        fprintf('se encontro sol en');
        itera
        xi
        x
        plot(errores,iteraciones)
        toc
        return
    end
    itera=itera+1;
    xi=x;
end
toc
plot(errores,iteraciones)
end
