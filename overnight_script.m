initProgram();
HONEST = true;
x_range = [.055 .09];
y_range = [.065 .08];
FIG_PATH = '2D_scatter/red_lake/honest_%d.fig';
investigate2D();

initProgram();
HONEST = true;
x_range = [.055 .06];
y_range = [.035 .045];
FIG_PATH = '2D_scatter/green_island/honest_%d.fig';
investigate2D();

initProgram();
HONEST = true;
x_range = [.02 .025];
y_range = [.01 .02];
FIG_PATH = '2D_scatter/party/honest_%d.fig';
investigate2D();

initProgram();
HONEST = true;
x_range = [0 1];
y_range = [0 1];
FIG_PATH = '2D_scatter/zoom_out/honest_%d.fig';
investigate2D();

initProgram();
HONEST = true;
x_range = [0 10];
y_range = [0 10];
FIG_PATH = '2D_scatter/zoom_more_out/honest_%d.fig';
investigate2D();
