initProgram();
loadDice();
x = 1.65; y = 3.9;
initDiceFromXY();
VIDEO_DIR = 'video/red_sea/right';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'right_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
x = 1.5; y = 4;
initDiceFromXY();
VIDEO_DIR = 'video/red_sea/mid';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'mid_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
x = 1.2; y = 4.4;
initDiceFromXY();
VIDEO_DIR = 'video/red_sea/left';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'left_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
x = 0; y = 0;
initDiceFromXY();
VIDEO_DIR = 'video/zoom_out/x0y0';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'x0y0_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
x = 1; y = 0;
initDiceFromXY();
VIDEO_DIR = 'video/zoom_out/x1y0';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'x1y0_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
x = 0; y = 1;
initDiceFromXY();
VIDEO_DIR = 'video/zoom_out/x0y1';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'x0y1_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
x = 1; y = 1;
initDiceFromXY();
VIDEO_DIR = 'video/zoom_out/x1y1';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'x1y1_%d.png']
rollAndSaveVideo();
