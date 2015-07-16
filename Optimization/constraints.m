function [ineq_violations, eq_violations ] = constraints(q)

% Last Updated: 7/6/2015

%% Read input

% Query values q

% Do forward dynamics

%% Implement constraints subject to:

temp_ceq = [];
temp_c = [];

%% Equality constraints

%% Inequality constraints
idx = 0;

% s.t. Damper coefficient limits
% idx = idx + 1;
% temp_c(idx) = q(2) - shin.damper.Kdmax;
% 
% idx = idx + 1;
% temp_c(idx) = shin.damper.Kdmin - q(2);

idx = idx + 1;
temp_c(idx) = q(1) - 1;

idx = idx + 1;
temp_c(idx) = 0 - q(1);

idx = idx + 1;
temp_c(idx) = q(2) - 1;

idx = idx + 1;
temp_c(idx) = 0 - q(2);

% Set violations
eq_violations = temp_ceq';
ineq_violations = temp_c';

end

