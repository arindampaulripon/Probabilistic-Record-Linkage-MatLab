function [us] = calcofu(a3,b3)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
f = [];
u = [];


f1 = unique(a3);
f=hist(a3,f1);




[u] = f/7;


us = [];
for i = 1:13


   us = [us;{mean(u(:,i))}];
  
end
us = cell2mat(us);

end

