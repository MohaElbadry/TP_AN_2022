function [x]=matr_diag(A,b)
    [n1,n2]=size(A);
    [b1,b2]=size(b);
    if ((n1<>n2 )|( n1<>b1)) then error ('problem au niveau de dimension ')
    end
    x= zeros(n1,1);
    for i=1:n1
        for j=1:n1
            if j<>i then 
                if A(i,j)<>0 then error('la matrice n est pas diagonale ')
                end
            end 
        end
    end
    for i=1:n1
        for j=1:n1
            if A(i,j)<>0 then 
            x(i,1)=A(i,j)/b(i,1)
            end 
        end 
    end
endfunction
