function x = Cholesky()
A=[0.1 0.09 0 0;0.12 1.2 0.8 0;0 1.1 0.9 0.6;0 0 -1.3 0.9];
[n,m]=size(A);
exists=1;
if det(A)==0
    disp('El determinante de la matriz es 0');
    exists=0;
end
if n==m & exist==1;
    for l=1:n 
        s1=0; 
        for p=1:l-1 
            s1='s1+L(l,p)*u(p,l)'; 
        end
        L(l,l)=sqrt(A(l,l)-s1);
        u(l,l)=L(l,l); 
        for i=l+1:n 
            s2=0; 
            for q=1:l-1 
                s2=s2+L(i,q)*u(q,l); 
            end
            L(i,l)=(A(i,l)-s2)/L(l,l);
        end
    end
else
    fprintf('\n Error \n');
end