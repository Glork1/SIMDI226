clear all;
close all;
clc;

% ALGORYTHME DE CALCUL - QUESTION 2

n =  3000;

%EXEMPLE DU PROCESSUS SINUSOIDAL
A = 1;
lambda = 2;
X = A*cos(lambda*(1:n)+2*pi*rand(1)) + 0*randn(1,n);
DSP_hat1= periodogramme(X,0); %? calcul de la DSP qui n 'existe pas
figure;
plot(DSP_hat1);

%EXEMPLE DU PROCESSUS AR(1)
phi = 0.7;
b = 1;
a = [1 -phi];
sigma = 1;
X = sigma*randn(1,n);
X = filter(b,a,X);
DSP_hat2= periodogramme(X,0);
figure;
plot(DSP_hat2);

%EXEMPLE DU BRUIT BLANC: la DSP est constante quelque soit lambda
sigma =1;
X = sigma*randn(1,n);
DSP_hat3= periodogramme(X,0);
figure;
plot(DSP_hat3);


