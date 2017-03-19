% by Paulo Abelha
% Hamming(7,4) encoder/decoder
% encoding is a flag for whether we are encoding (1) or decoding (0)
% function assumes s is a column vector with >3 elements
function [ t ] = hamming_7_4( encoding, s, params )
    P = [1 1 1 0; 0 1 1 1; 1 0 1 1];    
    if encoding
        G_t = [eye(4); P];
        s = double(reshape(s,4,size(s,1)/4));
        t = G_t*s;
        t = mod(t,2);
        t = t(:);
    else
        H = [P eye(3)];
        s = reshape(s,7,size(s,1)/7);
        z = H*s;
        z = mod(z,2);
        sindrome_vector = [0 7 6 4 5 1 2 3];
        t = s(1:4,:);
        for j=1:size(z,2)
            p = polyval(z(:,j),2);            
            flip_ix = sindrome_vector(p+1);
            if flip_ix > 0 && flip_ix < 5                
                t(flip_ix,j) = ~t(flip_ix,j);
            end
        end
        t = t(:);
    end
end

