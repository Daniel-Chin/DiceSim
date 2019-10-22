% Compute the derivitve

initProgram();
x_range = [.0037189 .0037191];
RESOLUTION = 0.000000001;

cursor = x_range(1);
loadDice();
initDiceFromCursor();
roll()
last_T = T;

hold on;
while true
    loadDice();
    initDiceFromCursor();
    roll()
    scatter(cursor, T - last_T, 5, FACE_COLOR(roll_result, :), 'filled');
    last_T = T;
    pause(.001);
    cursor = cursor + RESOLUTION;
    if cursor > x_range(2)
        break;
    end
end
