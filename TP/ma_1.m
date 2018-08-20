% DSP du processus MA(1)
% Echelle logarithique:
% f(?) = 10 log [ ?²/2pi . |1 + ?exp(-i?)|² ]
function [res] = ma_1(lambda,sigma,theta)
    aux = (abs(1+theta*exp(-1i*lambda)));
    res = 10*log(((sigma^2)/(2*pi))*aux.*aux)/(log(10));
end
