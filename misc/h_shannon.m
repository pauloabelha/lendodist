function [ h ] = h_shannon( P )
    if P < 0
        error('Probability needs to be >= 0');
    end
    if P == 0
        h = 0;
    else
        h = log2(1/P);
    end
end

