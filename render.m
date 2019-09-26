% draw the 3D world
linewidth = int8(20 / max([abs(CM_position) 10])) + 1;

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
        'linewidth', linewidth, ...
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
        'linewidth', linewidth * 1.5 ...
    );
end

% draw dice height
line([CM_position(1) CM_position(1)], [CM_position(2) CM_position(2)], [CM_position(3) 0], 'color', 'black');

% draw clock
line([0 cos(T * 2 * pi)], [0 sin(T * 2 * pi)], [0 0], 'linewidth', 2);
axis equal;
