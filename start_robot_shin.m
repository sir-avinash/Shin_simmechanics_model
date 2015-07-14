

addpath(genpath('Images'))
addpath(genpath('stl'))

% Set simulation parameters
Y0 = 1;     % Initial heigh [m]
K = 1500;   % Spring constant [N/m]
C = 75;     % Damping coefficient [N/(m/s)]


mdl = 'robot_shin_test';
open(mdl);
sim(mdl);