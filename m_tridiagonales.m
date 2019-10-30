%primera matriz
a=[0.1;1.2;0.9;0.9]; %diagonal principal
b=[0;0.12;1.1;-1.3];%diagonal inferior
c=[0.09;0.8;0.6;0];%diagonal superior
d=[-0.01;0.28;1.4;3.1];%solucion
sol=tridiag(a,b,c,d)

A=[0.1 0.09 0 0;0.12 1.2 0.8 0;0 1.1 0.9 0.6;0 0 -1.3 0.9];
A*sol

%segunda matriz
a=[-1;2;3;-4;1]; %diagonal principal
b=[0;1;-2;1;3];%diagonal inferior
c=[1;0;1;0;0];%diagonal superior
d=[2;7;-8;8;-7];%solucion
sol2=tridiag(a,b,c,d)

B=[-1 1 0 0 0;1 2 0 0 0;0 -2 3 1 0;0 0 1 -4 0 ;0 0 0 3 1];
B*sol2
