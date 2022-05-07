function [x,n]=N(x0,precision)
    n=0;er=1;
    while(er>precision)
        n=n+1
        x=x0-(f(x0)/numderivative(f,x0))
        er=abs(x-x0)
        x0=x
        if(n>8) then break 
        end
    end
    
endfunction
