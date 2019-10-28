initProgram();
loadDice();
x = .019775; y = .0182;
initDiceFromXY();
VIDEO_DIR = 'video/micro_yells/down';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'down_%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
x = .01979; y = .01824;
initDiceFromXY();
VIDEO_DIR = 'video/micro_yells/mid';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'mid%d.png']
rollAndSaveVideo();

initProgram();
loadDice();
x = .0198; y = .01827;
initDiceFromXY();
VIDEO_DIR = 'video/micro_yells/up';%
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR '/' 'up%d.png']
rollAndSaveVideo();
