% in this experiment, mass is homogeneous, so it doesn't appear anywhere. 
% the moment of intertia of a cube is symmetric, so I_dice under global frame is constant. 

delta_t = .1    % in seconds
DICE_RADIUS = 1;    % in cm
INIT_HEIGHT = 5;
GRAVITY = 980;  % 9.8 m/s^2 = 980 cm/s^2

X = [ % Position relative to center of mass
    -1 -1 -1; 
    -1 -1 +1; 
    -1 +1 -1; 
    -1 +1 +1; 
    +1 -1 -1; 
    +1 -1 +1; 
    +1 +1 -1; 
    +1 +1 +1; 
] * DICE_RADIUS;
N_POINTS = size(X, 1);

I = sum(X .^ 2, 'all') * eye(3);
for i = 1 : N_POINTS
    % To vectorize this loop: how do you [x' for x in a]? 
    I = I - X(i)' * X(i)
end
display(I)

force = zeros(N_POINTS, 3)
CM_position = [0 0 INIT_HEIGHT];
CM_linear_v = [0 0 0];
CM_angular_v = [0 0 0];

initDice();
