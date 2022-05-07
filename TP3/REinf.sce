
function x=resinf(A,b)
    [n1,n2]=size(A);
    [m1,m2]=size(b);
    if (n1<>m1 | n1<>n2) then error("dimension incompatible")
    end
    x=zeros(n1,1);
    for i=1:n1
        for j=1:n2
            if i<j then 
                if A(i,j)<>0 then error("la matrice n est pas triangulaire inf")
                end 
            end
        end            
    end
    for i=1:n1
        s=0
        k=1
        for j=1:i
            s=s+A(i,j)*x(j,1)
        end
        if A(i,i)<>0 then
        x(i,1)=(b(i,1)-s)/A(i,i)
        end
    end
endfunction
