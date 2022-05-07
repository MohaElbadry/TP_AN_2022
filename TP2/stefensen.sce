function [x,n]=stefens(x0,precision)
    n=0;er=1;
    while (er>precision)
        n=n+1
        x1=g(x0);
        x2=g(x1);
        x3=x0-(((x1-x0)^2)/(x2-2*x1+x0));
        er=abs(x3-x0)
        x0=x3
        if (n>10) then break 
            end
    end
    x=x0
endfunction
