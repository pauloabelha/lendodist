% evidence for model H1 (bent coin)
function [ P ] = P_H1( F, Fa )
    if F < 0 || Fa < 0
        error('F and Fa need to be greater than 0');
    end
    if Fa > F
        error('Fa needs to be smaller than F');
    end
    P = (factorial(Fa)*factorial(F-Fa))/factorial(F+1);
end

