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