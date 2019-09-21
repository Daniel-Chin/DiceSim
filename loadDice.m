X = [ % Position relative to the center of the dice
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
    I = I - X(i, :)' * X(i, :);
end
display(I);

force = zeros(N_POINTS, 3);
CM_position = [0 0 INIT_HEIGHT];
CM_linear_v = [0 0 0];
L = [0 0 0];    % angular momentum
