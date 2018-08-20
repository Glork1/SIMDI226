clear all;
close all;
clc;

load table_big.csv

CAC = table_big(:,2); % et non table.csv(:,6)...
n = size(CAC);
n = n(1)
for i=2:(n-1)
    RAT(i) = (CAC(i)-CAC(i-1))/(CAC(i-1));
end
plot(RAT);