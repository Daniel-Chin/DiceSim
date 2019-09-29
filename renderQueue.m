initProgram();
loadDice();
cursor = 0.00371901;
initDiceFromCursor();
VIDEO_DIR = 'video/border/mid_right/';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR 'd_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
cursor = 0.003719009;
initDiceFromCursor();
VIDEO_DIR = 'video/border/mid_left/';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR 'd_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
cursor = 0.0037189;
initDiceFromCursor();
VIDEO_DIR = 'video/border/left/';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR 'd_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
%cursor = 0.0037191;
initDiceFromCursor();
VIDEO_DIR = 'video/border/right/';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR 'd_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
cursor = .00810637;
initDiceFromCursor();
VIDEO_DIR = 'video/TiaoKong/left/';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR 'd_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
cursor = .00810639;
initDiceFromCursor();
VIDEO_DIR = 'video/TiaoKong/right/';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR 'd_%d.png']
rollAndSaveVideo();
