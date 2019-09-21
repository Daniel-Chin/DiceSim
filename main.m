% in this experiment, mass is homogeneous, so it doesn't appear anywhere. 
% the moment of intertia of a cube is uniform, so rotation of I yields no change. 

clear all;

delta_t = .02;    % in seconds
DICE_RADIUS = 1;    % in cm
INIT_HEIGHT = 5;
GRAVITY = [0 0 -980];  % 9.8 m/s^2 = 980 cm/s^2
GROUND_STIFF = 10000;   % in N/cm
GROUND_DAMP = .1;
GROUND_MU = 1000;

loadDice();
initDice(); % Give the dice an initial condition

while true
    step();
    display(CM_position);
    pause(delta_t);
end
