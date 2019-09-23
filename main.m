% in this experiment, point mass is 1, so it doesn't appear anywhere. 
% the moment of intertia of a cube is uniform, so rotation of I yields no change. 

clear all; close all;

delta_t = .003;    % in seconds
DICE_RADIUS = 1;    % in cm
INIT_HEIGHT = 10;
GRAVITY = [0 0 -980];  % 9.8 m/s^2 = 980 cm/s^2
GROUND_STIFF = 500000;   % in N/cm
GROUND_DAMP = 1;
GROUND_MU = 1;

GROUND_DRAW_SIZE = 10;
GROUND_DRAW_GRID = 8;

loadDice();

loadGraphics();
loadFACE_LOOKUP();

theoratical_energy_zero = - 4 * (1 + 1) * GRAVITY(3);

initDice(); % Give the dice an initial condition
while true
    step();
    render();
    display(totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero));
    display(whichFace(X, FACE_LOOKUP));
    pause(delta_t);
end
