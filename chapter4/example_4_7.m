%% clear memory
clear;
%% define constants to experiment with
N = 15;
p1 = 0.1;
p0 = 1 - p1;
% cardinality of N
N_card = 2^N;
%% variables for strings and their probabilites 
X = N_bin_strings(N);
Ps = zeros(1,N_card);
%% get probabilities
% sum of X's clumsn for a given row = number of 1's
for i=1:N_card
   Ps(i) = p_of_x(p0,p1,N,sum(X(i,:)));
end
%% sort probabilities
Ps = sort(Ps,'descend');
%% get deltas
deltas = zeros(1,N_card);
for i=1:N_card
    deltas(i) = 1 - sum(Ps(1:i));
end
%% get entropies
Hs = log2(1:N_card);
%% plot
plot(deltas,Hs)

%% probability of x for the example's ensemble
function p_x = p_of_x(p0,p1,N,r_x)
    p_x = ((p0^(N-r_x))*(p1^r_x));
end