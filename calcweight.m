
function [weight] = calcweight(A,us)





m = [0.99;0.98;0.99;0.97;0.98;0.99];
% m = transpose(m);
% u = transpose(u);

[x,y] = size(A);
weight = [];
for i = 1:x
   for j = 1:y
       
        if(A(i,j) == 0)
            
            [weight] = [weight;{(log10((m(2,:)))./(us(j,:)))}];
        else
            [weight] = [weight;{(log10((1-m(2,:)))./(1-us(j,:)))}];
            
        end    
    end
    
end
weight = cell2mat(weight);

weight = reshape(weight,size(A));
% 
end

