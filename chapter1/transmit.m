% by Paulo Abelha
% simulate the trasnmission of bits through a channel
function [ d ] = transmit( s, coder_func, coder_params, channel_func, channel_params, plot_figs )
    % vetorise s
    orig_size = size(s);
    s = s(:);    
    t = coder_func(1, s, coder_params);
    r = channel_func(t, channel_params);    
    d = coder_func(0, r, coder_params);
    % get r as s in its original dimensionality
    d = reshape(d,orig_size);
    if plot_figs
        figure;
        bitimg2bw( d, 1 );
    end
end

