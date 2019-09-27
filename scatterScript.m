initProgram();
%x_range = [.0047189 .0047191];
x_range = [.008106 .008107];
RESOLUTION = range(x_range) / 100;
SCATTER_DIR = '1D_scatter/';
mkdir(SCATTER_DIR);
SCATTER_PATH = [SCATTER_DIR 'TiaoKong_3.png'];
investigate1D_dumb();
saveas(gcf, SCATTER_PATH);
