% I don't know what this algorithm is called. 
% Please open an issue if you know what it's called. 

initProgram();

RESOLUTION = 0.0001;

cursor = 0.01;

hold on;
while true
    loadDice();
    initDiceFromCursor();
    roll()
    scatter(cursor, T, 5, FACE_COLOR(roll_result, :), 'filled');
    pause(.001);
    cursor = cursor + RESOLUTION;
end
