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
x_range = [-50 50];
y_range = [-50 50];
T_AXIS = false;%
SCATTER_DIR = '2D_scatter/zoom_even_more_out/';%
HONEST = true;
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'honest_%d.png'];%
investigate2D();
