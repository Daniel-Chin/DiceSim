FACE_CORNER = zeros(6, 4);
FACE_CORNER(1, :) = [1 2 3 4];
FACE_CORNER(2, :) = [1 2 5 6];
FACE_CORNER(3, :) = [1 3 5 7];
FACE_CORNER(4, :) = [2 4 6 8];
FACE_CORNER(5, :) = [3 4 7 8];
FACE_CORNER(6, :) = [5 6 7 8];

FACE_DOT = zeros(6, 2, 6);
FACE_DOT(1, :, 1:1) = [.5 .5]';
FACE_DOT(2, :, 1:2) = [.3 .3; .7 .7]';
FACE_DOT(3, :, 1:3) = [.2 .2; .5 .5; .8 .8]';
FACE_DOT(4, :, 1:4) = [.3 .3; .3 .7; .7 .3; .7 .7]';
FACE_DOT(5, :, 1:5) = [.2 .2; .2 .8; .5 .5; .8 .2; .8 .8]';
FACE_DOT(6, :, 1:6) = [.2 .3; .2 .7; .5 .3; .5 .7; .8 .3; .8 .7]';

DOT_SIZE = [5 1 1 1 1 1]';

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
