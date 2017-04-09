function [ log_evidence ] = belgian_coin( n_heads, n_tails )
    n_tosses = n_heads + n_tails;
    log_n_heads = safe_log_of_factorial(n_heads);
    log_n_tails = safe_log_of_factorial(n_tails);
    log_n_tosses_plus_one = safe_log_of_factorial(n_tosses+1);
    log_evidence = ((log_n_heads+log_n_tails)-log_n_tosses_plus_one)-log10(0.50^n_tosses);
    if isinf(log_evidence)
        a=0;
    end
end

function log_num = safe_log_of_factorial(num)
    if num > 150
        log_num=0;
        for i=1:num
            log_num=log_num+log10(i);
        end
    else
        log_num = log10(factorial(num));
    end
end

