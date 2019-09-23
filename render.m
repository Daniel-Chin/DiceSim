% draw the 3D world

% draw ground
mesh(GROUND_X, GROUND_Y, GROUND_Z);

% draw edges
for pair = EDGE
    absolute = X(pair, :) + CM_position;
    line(absolute(:, 1), absolute(:, 2), absolute(:, 3));
end

% draw dots
for face = 1:6
    base = X(FACE_CORNER(1, [2 3]), :) - X(FACE_CORNER(1, [1 1]), :);
    offset = CM_position + X(FACE_CORNER(1, 1), :);
    for dot_i = 1:face
        % viscircles( ...
            % offset + FACE_DOT(face, :, dot_i) * base, ...
            % DOT_SIZE(face) ...
        % );
    end
end

% lock 3d view
line([0 0], [0 0], [INIT_HEIGHT + 1, -1]);
axis equal;
