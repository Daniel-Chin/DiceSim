initProgram();
x_range = [.057 .0575];
y_range = [.042 .044];
T_AXIS = false;%
SCATTER_DIR = '2D_scatter/green_island_2/';%
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'honest_%d.png'];%
investigate2D();

stop();
initProgram();
x_range = [.056 .06];
y_range = [.036 .048];
z_range = [0 .012];
SCATTER_DIR = '3D_scatter/green_island/';%
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'dense%d.fig'];%
investigate3D();

initProgram();
x_range = [1 2];
y_range = [3.5 4.5];
z_range = [0 1];
SCATTER_DIR = '3D_scatter/red_sea/';%
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'dense%d.fig'];%
investigate3D();
