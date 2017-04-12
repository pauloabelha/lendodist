function [ log_evidence ] = belgian_coin( n_heads, n_tails )
    n_tosses = n_heads + n_tails;
    log_n_heads = safe_log_of_factorial(n_heads);
    log_n_tails = safe_log_of_factorial(n_tails);
    log_n_tosses_plus_one = safe_log_of_factorial(n_tosses+1);
    log_evidence = ((log_n_heads+log_n_tails)-log_n_tosses_plus_one)-log10(0.50^n_tosses);
end



