% by Paulo Abelha
% simulates a Binary Simmetric Channel with probability f of flipping a bit
function [ r ] = bin_sim_channel( s, f )
    % vetorise s
    orig_size = size(s);
    s = s(:);
    % get flliped bit ixs, drawing from a binomial distribution
    flip_ixs = logical(binornd(1,f,[size(s,1) 1]));
    % flip bits
    s(flip_ixs) = ~s(flip_ixs);
    % get r as s in its original dimensionality
    r = reshape(s,orig_size);
end

