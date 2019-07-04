# Probabilistic-Record-Linkage-MatLab
A probabilistic approach to record linkage using Fellegi-Sunter  framework with difference matrix 
A probabilistic approach to record linkage using Fellegi-Sunter framework using MatLab . It can be used with any versions of MatLab . Functions are :

readfile % Read any two data file to be linked.

caldiffmatrix(a3,b3); %Calculate difference matrix, the difference of each row of a %datafile from another. 
calcofu(a3,b3); %Calculation of U-Probability using frequency of data. 
calcweight(A,us); % Calculating weight of each filed using M and U- Probability , %assuming M = 0.99 
calcsumofweight(weight); %Calculate weight summation for every linked pair .

Example : 
b3 = readfile('b3.csv'); 
a3 = readfile('a3.csv'); 
A = caldiffmatrix(a3,b3); 
us = calcofu(a3,b3); 
weight = calcweight(A,us); 
sum = calcsumofweight(weight);
