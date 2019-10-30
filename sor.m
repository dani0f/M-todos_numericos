function x_sor=sor(w,n,A,b,xo,tol)
    w
    C1=zeros(n,n);
    D=zeros(n,n);
    for i=1:n
        for j=1:n
            if i>j
                C1(i,j)=A(i,j);
            end
            if i==j
                D(i,j)=A(i,j);
            end
        end
    end
    Qsor=((1/w)*D)-C1;
    Qsor_inv=inv(Qsor);
    C1;
    D;
    Qsor;
    Qsor_inv;
    I = eye(n);
    Msor=I-Qsor_inv*A;
    xo=xo';
    b=b';
    k=0;
    v_prop=eig(Msor);
    r_esp=max(abs(v_prop));
    while true  
        x1=(Msor*xo)+(Qsor_inv*b);
        error= norm(A*x1-b);
        k=k+1;
        xo=x1;
        if error < tol
            x_sor=xo;
            k
            r_esp
            return
        end
        if k>10000
            x_sor=xo;
            k
            r_esp
            return
        end
end