% in this experiment, point mass is 1, so it doesn't appear anywhere. 
% the moment of intertia of a cube is uniform, so rotation of I yields no change. 

clear all; close all;

delta_t = .02;    % in seconds
DICE_RADIUS = 1;    % in cm
INIT_HEIGHT = 10;
GRAVITY = [0 0 -980];  % 9.8 m/s^2 = 980 cm/s^2
GROUND_STIFF = 10000;   % in N/cm
GROUND_DAMP = .1;
GROUND_MU = 1000;

GROUND_DRAW_SIZE = 5;
GROUND_DRAW_GRID = 8;

loadDice();
initDice(); % Give the dice an initial condition

loadGraphics();
loadFACE_LOOKUP();

while true
    step();
    render();
    display([CM_position total_force]);
    % pause(delta_t);
    pause(.5);
end
