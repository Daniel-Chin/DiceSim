% I don't know what this algorithm is called. 
% Please open an issue if you know what it's called. 

% initProgram();
% x_range = [0 .034];
% RESOLUTION = 0.00001;

cursor = x_range(1);

hold on;
while true
    loadDice();
    initDiceFromCursor();
    roll()
    scatter(cursor, T, 5, FACE_COLOR(roll_result, :), 'filled');
    pause(.001);
    cursor = cursor + RESOLUTION;
    if cursor > x_range(2)
        break;
    end
end
