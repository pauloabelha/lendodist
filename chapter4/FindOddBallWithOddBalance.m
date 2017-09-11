function [ odd_ball ] = FindOddBallWithOddBalance( balls, ix, regular_ball )
    if numel(balls) == 2
        balance = odd_balance(balls(1), regular_ball);
        if balance
            odd_ball = ix+1;
        else
            odd_ball = ix;
        end
        return;
    end
    [balls_1, balls_2, split_ix] = split_balls(balls);
    [balls_11, balls_12] = split_balls(balls_1);
    balance = odd_balance(balls_11, balls_12);
    if balance
        odd_ball = FindOddBallWithOddBalance(balls_2, ix+split_ix, balls_1(1));
    else
        odd_ball = FindOddBallWithOddBalance(balls_1, ix, balls_2(1));
    end
end

function balance = odd_balance(pan1, pan2)
    balance =  sum(pan1) == sum(pan2);
end

function [balls_1, balls_2, split_ix] = split_balls(balls)
    split_ix = ceil(numel(balls)/2);
    balls_1 = balls(1:split_ix);
    balls_2 = balls(split_ix+1:numel(balls));
end
