function [res ] = periodogramme(X,moy)
    n = length(X);
    res = abs(fft(X-moy));
    res =  res .*res./(2*pi*n);
end

