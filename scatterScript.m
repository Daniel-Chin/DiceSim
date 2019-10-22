initProgram;
x_range = [.003719008 .003719011];
RESOLUTION = 0.00000000002;
SCATTER_DIR = '1D_scatter/';%
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'border_5.png'];%
investigate1D_dumb();
saveas(gcf, SCATTER_PATH);
