
%UNTITLED4 Summary of this function goes here
function [A] = caldiffmatrix(a3,b3)
diff=[];

[a,b] = size(a3);
[c,d] = size(b3);

for i = 1:a
    for j = 1:c
        [diff] = [diff ;{a3(i,:) - b3(j,:)}];     
        
    end
end
A = cell2mat(diff);
end

