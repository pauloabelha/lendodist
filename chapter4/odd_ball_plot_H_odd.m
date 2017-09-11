function [ Hs ] = odd_ball_plot_H_odd( N_balls )
    Hs = zeros(N_balls,N_balls);
    for i=1:N_balls
        for j=1:N_balls
            if (i+j) <= N_balls
                Hs(i,j) = odd_ball_H_odd(N_balls, i, j);
            end
        end
    end
    surf(1:N_balls,1:N_balls,Hs);
end

