% evidence for model H1 (bent coin)
function [ P ] = P_H0( F, Fa, p0 )
    if F < 0 || Fa < 0
        error('F and Fa need to be greater than 0');
    end
    if Fa > F
        error('Fa needs to be smaller than F');
    end
    if p0 < 0 || p0 > 1
        disp('Oh no! Probability smaller than 0 or greater than 1');
    end
    P = (p0^Fa)*((1-p0)^(F-Fa));
end

