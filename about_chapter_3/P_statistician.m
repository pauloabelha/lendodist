function [ P, Ps] = P_statistician( N, Fh_start, ph  )
    Ps = binopdf(Fh_start:N,N,ph);
    P = sum(Ps);  
end

