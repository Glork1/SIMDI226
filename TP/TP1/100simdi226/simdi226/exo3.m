clear all;
close all;
clc;

%QUESTION 1
p = 4;
n = 1000;
sigma = 1; %par hypothèse
[X,phi] = genAR(p,n);

%QUESTION 2
gamma = acovb(X);
%toeplitz = zeros(p+1,p+1);
%for i = 1:p+1
 %   for j = 1:p+1
  %      if i~=j
   %         toeplitz(i,j) = gamma(abs(i+1-j));
    %    end
     %   %prendre la moyenne des gamma_hat (i-j) en (i,j)...
     %end
%end
toep = [gamma(1) gamma(2) gamma(3) gamma(4) gamma(5);
           gamma(2) gamma(1) gamma(2) gamma(3) gamma(4);
           gamma(3) gamma(2) gamma(1) gamma(2) gamma(3);
           gamma(4) gamma(3) gamma(2) gamma(1) gamma(2);
           gamma(5) gamma(4) gamma(3) gamma(2) gamma(1)];

%QUESTION 3
aux = zeros(1,5);
aux(1) = 1;
v = inv(toep)*aux';
phi_hat = -v*sigma^2;

%QUESTION4.
vrai_phi_hat = phi_hat(2:5);
erreur_phi = (phi'-vrai_phi_hat)./(vrai_phi_hat)

%COMPARAISON SPECTRE
%AVEC PHI REFERENCE
DSP_ref = periodogramme(X,0);
figure;
plot(DSP_ref);

%AVEC PHI ESTIME
%model = arima('Constant',0.5,'AR',{phi_hat(1),phi_hat(2),phi_hat(3),phi_hat(4)},'Variance',1);
%Y = simulate(model,1000);
%DSP_hat = periodogramme(Y,0);
%figure;
%plot(DSP_hat);
