initProgram();
loadDice();
x = 1.65; y = 3.9;
initDiceFromXY();
VIDEO_DIR = 'video/red_sea/right';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'right_%d.png']
rollAndSaveVideo();
