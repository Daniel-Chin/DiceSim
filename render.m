% draw the 3D world

% draw ground
mesh(GROUND_X, GROUND_Y, GROUND_Z);

% draw edges
for pair = EDGE
    absolute = X(pair, :) + CM_position;
    if any(absolute(:, 3) < 0)
        color = 'red';
    else
        color = 'black';
    end
    line( ...
        absolute(:, 1), absolute(:, 2), absolute(:, 3), ...
        'linewidth', sum(X(pair, 3)) + 3, ...
        'color'    , color ...
    );
end

% draw number on face
for face = 1:6
    base = X(FACE_CORNER(face, [2 3]), :) - X(FACE_CORNER(face, [1 1]), :);
    offset = CM_position + X(FACE_CORNER(face, 1), :);
    path = offset + FACE_MARK(:, :, face) * base;
    line(path(:, 1), path(:, 2), path(:, 3), ...
        'color', FACE_COLOR(face, :), ...
        'linewidth', 2 ...
    );
end

% lock 3d view
line([0 0], [0 0], [INIT_HEIGHT + 1, -1]);
axis equal;
