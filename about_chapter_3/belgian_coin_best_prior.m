function [ probs ] = belgian_coin_best_prior( n_spins, ns_heads )
    probs = zeros(1,size(ns_heads,2));
    for i=1:size(ns_heads,2)
        n_heads = ns_heads(i);
        f = n_heads/n_spins;        
        probs(i) = (2^n_spins)*((f^n_heads)*((1-f)^(n_spins-n_heads)));
    end
end

