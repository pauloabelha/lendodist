% by Paulo Abelha
% converts a 'bit_img' (M*N matrix of )s and 1s) into a plottable bw img
% bit 0 is white and 1 is black
function [ bw ] = bitimg2bw( bit_img, plot_fig )
    % default is not plotting
    if ~exist('plot_fig','var')
        plot_fig=0;
    end
    bw = zeros(size(bit_img));
    bw(bit_img < 1) = 255;
    if plot_fig
        imshow(bw);
    end
end

