function [ Ps ] = plot_P_statistician( N, ph  )
    Ps = zeros(1,N);  
    for Fh_start = 1:250
        Ps(Fh_start) = P_statistician(N,Fh_start,ph);
    end
    plot(Ps);
end

