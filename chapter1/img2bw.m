% by Paulo ABelha
% converts M*n*3 rgb img file to M*N matrix of 0s and 1s (black and white)
function [ bit_img, bw ] = img2bw( img, plot_fig )
    % default is not plotting
    if ~exist('plot_fig','var')
        plot_fig=0;
    end
    % read img as M8N*3 matrix if a filepath was passed
    if ischar(img)
        img = imread(img);
    end
    if size(img,3) == 3
        bit_img = rgb2gray(img);
    else
        bit_img = img;
    end
    white_ixs = bit_img > 255/2;
    bit_img(white_ixs) = 0;
    bit_img(~white_ixs) = 1;    
    bw = bitimg2bw(bit_img, plot_fig);
end