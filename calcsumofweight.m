function [summ] = calcsumofweight(weight)
[x,y] = size(weight);
summ = [];
for i = 1:x
    

    summ = [summ;{sum(weight(i,:))}];
    summ = cell2mat(summ);
end
end

