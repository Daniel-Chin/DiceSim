initProgram;
GROUND_DAMP = 0.005;  % in s/cm
HONEST = true;
T_AXIS = false;
x_range = [0 .1]; y_range = [0 .1];
SCATTER_DIR = '2D_scatter/damp/mid/';%
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'd_%d.png'];%
investigate2D();
saveas(gcf, SCATTER_PATH);

initProgram;
GROUND_DAMP = 0.01;  % in s/cm
HONEST = true;
T_AXIS = false;
x_range = [0 .1]; y_range = [0 .1];
SCATTER_DIR = '2D_scatter/damp/high/';%
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'd_%d.png'];%
investigate2D();
saveas(gcf, SCATTER_PATH);
