clear all; close all;

delta_t = .001;    % in seconds
DICE_RADIUS = 1;    % in cm
INIT_HEIGHT = 15;
GRAVITY = [0 0 -980];  % 9.8 m/s^2 = 980 cm/s^2
GROUND_STIFF = 500000;   % in N/cm
GROUND_DAMP = 0.005;  % in N*s/cm
GROUND_MU = 1.2;

GROUND_DRAW_SIZE = 10;
GROUND_DRAW_GRID = 8;

loadGraphics();
loadFACE_LOOKUP();

theoratical_energy_zero = - 4 * (1 + 1) * GRAVITY(3);
destiny_energy = - (4 + 2 * 2) * sqrt(2) * GRAVITY(3) - theoratical_energy_zero;
confirm_destiny_energy = destiny_energy * .8;

T = 0;
