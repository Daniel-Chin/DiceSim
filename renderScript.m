initProgram();
VIDEO_DIR = 'video/random/3/';
mkdir(VIDEO_DIR);
VIDEO_PATH = [VIDEO_DIR 'd_%d.png'];
loadDice();
initDice();
rollAndSaveVideo();
