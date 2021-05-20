clear
clc
load reaction
[betahat,resid,J] = nlinfit(reactants,rate,'hougen',beta);
betaci = nlparci(betahat,resid,J);
disp(betahat)
disp(betaci)