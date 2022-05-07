
function [AG,sol]=gauss(A,b)
    [n,n1]=size(A);
    j=1;
    while (j<=n-1)
        if A(j,j)==0 then break
        
        else
            i=j+1
        end
            while (i<=n)
                m(i,j)=A(i,j)/A(j,j)
                if (m(i,j)==0)  i=i+1;
               else 
                    k=j+1
                    while(k<=n)
                        A(i,k)=A(i,k)-(m(i,j)*A(j,k))
                        k=k+1
                    end
                    end
                    b(i,1)=b(i,1)-(m(i,j)*b(j,1))
                    i=i+1
             end
                    j=j+1            
        end 
    AG=zeros(n,n);
    for i=1:n
        for j=1:n
            if (j>=i)
                AG(i,j)=A(i,j)
            end    
        end 
    end
    
    sol=ressup(AG,b);
    
endfunction


