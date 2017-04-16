function [ H ] = H_shannon( Ps )
    H = 0;
    for i=1:numel(Ps)
       H = H + (Ps(i)*h_shannon(Ps(i)));
    end
end

