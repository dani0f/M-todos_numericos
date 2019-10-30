function y=G_conjugado_b(n)
    M=zeros(n,n);
    a=zeros(1,n);
    b=zeros(1,n);
    c=zeros(1,n);
    d=zeros(1,n);
    xo=ones(1,n);
    for i=1:n
        for j=1:n
            if j==i
                M(i,j)=0.6;
                a(j)=0.6;
                    if(i==1)
                        M(i,j)=0.8;
                        a(j)=0.8;
                    end
                    if(i==n)
                        M(i,j)=0.8;
                        a(j)=0.8;
                    end
            else
                if i==j-1 | i==j+1
                    M(i,j)=0.2;
                    b(j)=0.2;
                    c(j)=0.2;
                end
            end
        end
    end
    c(n)=0;
    b(1)=0;
    M;
    b;
    c;
    a;
    s6 =pdf('Poisson',0:n-1,1:n);
    d=(s6);
    tic
    fprintf('Gradiente conjugado ------')
    x_gra=Gra_c(M,d,xo,10^-5);
    toc
    %SOLUCION POR EL METODO PROGRAMADO ANTERIORMENTE
    
 A=norm(M,1);
 inv_A=norm(inv(M),1);
 B=norm(s6,1);
    b_gra=M*x_gra;
    b_gra = norm(s6-b_gra',1);
    error_rel_gra=A*inv_A*(b_gra/B)

    
end