function [  ] = simulate_models( n_sim, n_trials, pa, model )
    for i=1:n_sim
        log_evidence = zeros(1,n_trials);
        for F=1:n_trials
            % sample from binomial distribution
            Fa = binornd(F,pa);
            log_evidence(F) = log(P_H1(F,Fa)/P_H0(F,Fa,pa));
        end
        figure;
        plot(1:n_trials,log_evidence);
        hip_name = ['H' num2str(model)];
        title([hip_name ' is true. pa=' num2str(pa) '. Experiment ' num2str(i)]);
        axis([1 n_trials -4 8]);
    end