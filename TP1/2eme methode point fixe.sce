deff('[s]=g(x)','s=1+2/(x+1)')
n=0;x0=1.6;er=1;precision=1e-7;
while(er>precision)
    n=n+1
    x1=g(x0)
    er=abs(x1-x0)
    x0=x1
    if(n>12) then break
    end
end        
