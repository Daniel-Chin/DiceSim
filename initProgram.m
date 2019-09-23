clear all; close all;

delta_t = .002;    % in seconds
DICE_RADIUS = 1;    % in cm
INIT_HEIGHT = 10;
GRAVITY = [0 0 -980];  % 9.8 m/s^2 = 980 cm/s^2
GROUND_STIFF = 500000;   % in N/cm
GROUND_DAMP = 1.2;
GROUND_MU = 1.2;

GROUND_DRAW_SIZE = 10;
GROUND_DRAW_GRID = 8;

loadDice();

loadGraphics();
loadFACE_LOOKUP();

theoratical_energy_zero = - 4 * (1 + 1) * GRAVITY(3);
destiny_energy = - (4 + 2 * 2) * sqrt(2) * GRAVITY(3) - theoratical_energy_zero;
confirm_destiny_energy = destiny_energy * .8;

T = 0;
