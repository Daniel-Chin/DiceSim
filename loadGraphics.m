FACE_CORNER = zeros(6, 4);
FACE_CORNER(1, :) = [1 2 3 4];
FACE_CORNER(2, :) = [1 2 5 6];
FACE_CORNER(3, :) = [1 3 5 7];
FACE_CORNER(4, :) = [2 4 6 8];
FACE_CORNER(5, :) = [3 4 7 8];
FACE_CORNER(6, :) = [5 6 7 8];

FACE_MARK = zeros(6, 2, 6);
FACE_MARK(:, :, 1) = [.4 .3; .5 .2; .5 .8; .4 .8; .6 .8; .6 .8];
FACE_MARK(:, :, 2) = [.2 .4; .5 .2; .8 .4; .2 .8; .8 .8; .8 .8];
FACE_MARK(:, :, 3) = [.2 .2; .8 .4; .2 .5; .8 .6; .2 .8; .2 .8];
FACE_MARK(:, :, 4) = [.8 .5; .2 .5; .5 .2; .5 .8; .5 .8; .5 .8];
FACE_MARK(:, :, 5) = [.8 .2; .2 .2; .2 .5; .8 .5; .8 .8; .2 .8];
FACE_MARK(:, :, 6) = [.8 .2; .2 .2; .2 .8; .8 .8; .8 .5; .2 .5];

FACE_COLOR = [  % Minesweeper color
    0 0 1; 
    0 1 0; 
    1 0 0; 
    1 0 1; 
    .7 .7 0; 
    0 0 0; 
];

EDGE = [
    1 2; 3 4; 5 6; 7 8;
    1 3; 2 4; 5 7; 6 8;
    1 5; 2 6; 3 7; 4 8;
]';

GROUND_X = meshgrid(1:GROUND_DRAW_GRID);
GROUND_X = GROUND_DRAW_SIZE * (GROUND_X / GROUND_DRAW_GRID - .5);
GROUND_Y = GROUND_X';
GROUND_Z = zeros(GROUND_DRAW_GRID, GROUND_DRAW_GRID);

CAMERA_POSITION = [-5 0 0];
CAMERA_ORIENTATION = [1 0 0];
CAMERA_FOV = [pi*16/32 pi*9/32];    % field of view
