    
%primera matriz

fprintf ('Primera matriz______________________________\n')
    w=1/2;
    xo=[1,1,1,1];
    b=[-0.01,0.28,1.4,3.1];
    A=[0.1 0.09 0 0;0.12 1.2 0.8 0;0 1.1 0.9 0.6;0 0 -1.3 0.9];
    cholesky(A); 
    tol=10^-5;
    fprintf ('JACOBI----------------------------------')
    jacobi(4,A,b,xo,tol);
    fprintf ('GAUSS SEIDEL-----------------------------------')   
    gaus_s(4,A,b,xo,tol);
    fprintf ('SOR-----------------------------------')
    sor(w,4,A,b,xo,tol);
    
    %segunda matriz

    fprintf ('Segunda matriz____________________________________\n')
    w=1/2;
    xo=[1,1,1,1];
    b=[2,7,-8,8];
    A=[-1 1 0 0;1 2 0 0;0 -2 3 1;0 0 1 -4];
    tol=10^-5;
    fprintf ('JACOBI---------------------------------')
    jacobi(4,A,b,xo,tol);
    fprintf ('GAUSS SEIDEL------------------------------')   
    gaus_s(4,A,b,xo,tol);
    fprintf ('SOR--------------------------------------')
    sor(w,4,A,b,xo,tol);
    
    