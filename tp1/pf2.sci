
function  y=g(x)
y=1+2/(x+1)
endfunction

function [x,n]=pointfixe(precision,x0)
    n=0;er=1;
    while (er>precision)
        n=n+1
        x=g(x0)
        er=abs(x-x0)
        x0=x
        if(n>14) then break
        end    
    end
endfunction
