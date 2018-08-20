clear all;
close all;
clc;

x = -pi:0.01:pi;
sigma = 1;
phi = 0.7;
y = ar_1(x,sigma,phi);
figure;
plot(x,y)