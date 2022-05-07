
function [AG,sol]=gauss_avec_pivot(A,b)
    [n,n1]=size(A);
    j=1;
    while (j<=n-1) 
      if A(j,j)==0
        for z=1:n
            A(j,z)=A(j,z)+A(j+1,z);
        end  
        b(j,1)=b(j,1)+b(j+1,1);
        else
            i=j+1
        end
            while (i<=n)
                m(i,j)=A(i,j)/A(j,j)
                if (m(i,j)==0)  
                    i=i+1;
               else 
                    k=j+1
                    while(k<=n)
                        A(i,k)=A(i,k)-(m(i,j)*A(j,k))
                        k=k+1
                    end
                end
                if i<=n1
                    b(i)=b(i)-m(i,j)*b(j)
                    i=i+1
                end
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

