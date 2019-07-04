b3 = readfile('b3.csv');
a3 = readfile('a3.csv');
A = caldiffmatrix(a3,b3);
us = calcofu(a3,b3);
weight = calcweight(A,us);
sum = calcsumofweight(weight);