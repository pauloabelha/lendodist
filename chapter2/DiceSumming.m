% by Paulo Abelha
% return the mth sum of rolling and summing n dice given by a function pointer
function [ mean_sum, var_sum, rolled_sum_results ] = DiceSumming( die_fun, die_fun_params, n )
    m = 10000;
    rolled_sum_results = zeros(1,m);
    for i=1:m
        rolled = die_fun(die_fun_params, n);
        rolled_sum_results(i) = sum(rolled);
    end    
    mean_sum = mean(rolled_sum_results);
    var_sum = var(rolled_sum_results);
end

er1