function [res] = ar_1(lamda,sigma,phi)
    aux = abs(1-phi*exp(-1i*lamda));
    res = (((sigma^2)/2*pi)./(aux.*aux));
end
