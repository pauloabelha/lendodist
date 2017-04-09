
clear;
close all;

n_sim = 3;
n_trials = 200;

%% H0 is true and pa = 1/6
simulate_models( n_sim, n_trials, 1/6, 0 );
%% H1 is true and pa = 0.25
simulate_models( n_sim, n_trials, 0.25, 1 );
%% H1 is true and pa = 0.5
simulate_models( n_sim, n_trials, 0.25, 1 );


