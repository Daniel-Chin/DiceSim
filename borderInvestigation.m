% I don't know what this algorithm is called. 
% Please open an issue if you know what it's called. 

initProgram();
MID = .00371900925;
x_range = [.00371 .00373];

cursor = x_range(1);

hold on;
while true
    loadDice();
    initDiceFromCursor();
    roll()
    scatter(cursor, T, abs(cursor - MID) * 1000000 + 1, FACE_COLOR(roll_result, :), 'filled');
    pause(.001);
    cursor = cursor + abs(cursor - MID) * .02 + 0.00000000002;
    if cursor > x_range(2)
        break;
    end
end
