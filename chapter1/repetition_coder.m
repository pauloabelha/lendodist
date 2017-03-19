% by Paulo Abelha
% Repetition encoder/decoder
% encoding is a flag for whether we are encoding (1) or decoding (0)
% function assumes s is a column vector
function [ t ] = repetition_coder( encoding, s, n )
    if encoding
        t = zeros(size(s,1)*n,1);
        size_t = size(t,1);
        for i=1:n
            t(i:n:size_t) = s;
        end
    else
        r = reshape(s,n,size(s,1)/n);
        m = mean(r,1);
        t= zeros(size(s,1)/n,1);
        t(m>0.5) = 1;
    end
end

