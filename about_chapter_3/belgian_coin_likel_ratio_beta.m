function [ likel_ratios ] = belgian_coin_likel_ratio_beta( n_spins, ns_heads, alphas )
    likel_ratios = zeros(size(ns_heads,2),size(alphas,2));
    for i=1:size(ns_heads,2)     
        n_heads = ns_heads(i);
        for j=1:size(alphas,2)
            alpha = alphas(j);
            likel_ratios(i,j) = (gamma(2*alpha)*gamma(n_heads+alpha)*gamma((n_spins-n_heads)+alpha)*(2^n_spins))/((gamma(alpha)^2)*gamma(n_spins+alpha));
        end
    end
end

