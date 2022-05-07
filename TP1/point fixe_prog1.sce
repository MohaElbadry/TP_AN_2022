deff('[s]=g(x)','s=1+2/(x+1)')
nmax=12; x=1.6;
for i=1:nmax
    x=g(x)
    y=x^2-3
end
