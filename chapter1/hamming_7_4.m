% by Paulo Abelha
% Hamming(7,4) encoder/decoder
% encoding is a flag for whether we are encoding (1) or decoding (0)
% function assumes s is a column vector
function [ t ] = hamming_7_4( encoding, s )
    G = [eye(4); [1 1 1 0; 0 1 1 1; 1 0 1 1]];
    


end

