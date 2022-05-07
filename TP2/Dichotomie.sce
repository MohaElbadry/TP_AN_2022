function [x,n]=dic(a,b,precision)
    n=0;er=1;
    while(er>precision)
        n=n+1
        x=(a+b)/2
        if (f2(x)*f2(a))>0 then a=x
            else b=x
        end
        er=abs(a-b)
        if(n>25) then break 
        end
    end
    
endfunction
