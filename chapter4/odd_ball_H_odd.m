function [ H ] = odd_ball_H_odd( N, n_left, n_right )
    if (n_left+n_right) > N
        error('Wrong params');
    end
    n_out = N - (n_left+n_right);
    P_left_heavy = n_left/N;
    P_right_heavy = n_right/N;
    P_balance = n_out/N;
    H = H_shannon([P_left_heavy,P_right_heavy,P_balance]);
end

