function [x,n]=dichotomie2(a,b,precision)
    er=1;
    n=0;
    while er>precision
        n=n+1
        x=b-((f2(b)*(b-a))/(f2(b)-f2(a)))
        if (f2(a)*f2(x)<0)
            b=x
        else
            a=x
        end
        er=abs(a-b)
    end
endfunction
