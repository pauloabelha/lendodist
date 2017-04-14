% return all the binary strings of a given size N
function [ Bs ] = N_bin_strings( N )
    MAX_N = 20;
    if N < 0
        error('N should be zero or positive');
    end
    if N > MAX_N
        error(['N should be les than ' num2str(MAX_N) ' (for memory/time issues)']);
    end
    N_cardinality = 2^N;
    Bs = zeros(N_cardinality,N);    
    for i=1:N_cardinality
        for j=0:N-1
            col = N-j;
            Bs(i,col) = mod(floor((i-1)/2^j),2);
        end
    end
end

