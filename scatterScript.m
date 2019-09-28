initProgram();
x_range = [4 9];
y_range = [.064 .07];
z_range = [0 .06];
SCATTER_DIR = '3D_scatter/red_sea/';%
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'dense%d.fig'];%
investigate3D();

initProgram();
x_range = [.02113 .02123];
y_range = [.01633 .01645];
T_AXIS = false;%
SCATTER_DIR = '2D_scatter/black_island_2/';%
HONEST = true;
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'honest_%d.png'];%
investigate2D();

initProgram();
x_range = [.006 .0065];
y_range = [.0687 .0695];
T_AXIS = false;%
SCATTER_DIR = '2D_scatter/purple_corner/';%
HONEST = true;
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'honest_%d.png'];%
investigate2D();

initProgram();
x_range = [.01975 .01983];
y_range = [.0182 .0183];
T_AXIS = false;%
SCATTER_DIR = '2D_scatter/party_3/';%
HONEST = true;
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'honest_%d.png'];%
investigate2D();

initProgram();
x_range = [1.4 1.55];
y_range = [3.98 4.23];
T_AXIS = false;%
SCATTER_DIR = '2D_scatter/red_sea_2/';%
HONEST = true;
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'honest_%d.png'];%
investigate2D();

initProgram();
x_range = [.0554 .056];
y_range = [.0395 .04];
T_AXIS = false;%
SCATTER_DIR = '2D_scatter/tiny_island/';%
HONEST = true;
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'honest_%d.png'];%
investigate2D();

initProgram();
x_range = [0 100];
y_range = [0 100];
T_AXIS = false;%
SCATTER_DIR = '2D_scatter/zoom_even_more_out/';%
HONEST = true;
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'honest_%d.png'];%
investigate2D();

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
