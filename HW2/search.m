function [ bestKey ] = search( ciphertext, key, trials, swaps )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

bestScore = 0;
for i=1:trials
    bestTrialScore = 0;
    
    for j=1:swaps

        new_key = swap(key, 5, 26);
    
        new_score = score(new_key, ciphertext);

        if new_score > bestTrialScore
            key = new_key;
            bestTrialScore = new_score;
            
        elseif new_score == bestTrialScore
            if rand(1,1) > 0.5
                key = new_key;
            end
        end
                    
    end
    
    if bestTrialScore > bestScore
        bestKey = key;
        bestScore = bestTrialScore;
    end
    
end

