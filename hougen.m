function yhat = hougen(beta,x)
%HOUGEN Hougen-Watson model for reaction kinetics.
% YHAT = HOUGEN(BETA,X) gives the predicted values of the
% reaction rate, YHAT, as a function of the vector of
% parameters, BETA, and the matrix of data, X.
% BETA must have five elements and X must have three
% columns.
%
% The model form is:
% y = (b1*x2 - x3/b5)./(1+b2*x1+b3*x2+b4*x3)
b1 = beta(1);
b2 = beta(2);
b3 = beta(3);
b4 = beta(4);
b5 = beta(5);
x1 = x(:,1);
x2 = x(:,2);
x3 = x(:,3);
yhat = (b1*x2 - x3/b5)./(1+b2*x1+b3*x2+b4*x3);