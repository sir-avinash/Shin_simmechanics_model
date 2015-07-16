function [ score ] = criterion(q)


% Query values 


% Do forward dynamics
i_comp = q(1);
i_exp = q(2);
sim('robot_shin_test');
  
%% Cost function
score = 0;      % Reset score

% Penalize for bounce height
score = score + (max_bounce_height*10^3)^2

% Penalize high ground reaction force
score = score + max_GRF^2

end

