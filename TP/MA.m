clear all;
close all;
clc;

x = -pi:0.01:pi;
sigma = 1;
theta = -0.9;
y = ma_1(x,sigma,theta);
figure;
plot(x,y);


