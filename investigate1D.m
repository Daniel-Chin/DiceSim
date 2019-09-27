% I don't know what this algorithm is called. 
% Please open an issue if you know what it's called. 

initProgram();

BACKTRACK_WEIGHT = [.618, 1 - .618]';
RESOLUTION = 0.00001;

window_left = 0;
cursor = 0;
loadDice();
initDiceFromCursor();
roll();
left_face = roll_result;
cursor = .01;
marching_or_searching = true;

hold on;
while true
    loadDice();
    initDiceFromCursor();
    roll();
    scatter(cursor, T, 5, FACE_COLOR(roll_result, :), 'filled');
    if marching_or_searching
        % marching
        if roll_result == left_face
            cursor = cursor + (cursor - window_left) * 1.2;
            window_left = cursor;
        else
            marching_or_searching = false;
            right_face = roll_result;
            window_right = cursor;
            cursor = [window_left window_right] * BACKTRACK_WEIGHT;
        end
    else
        % searching
        if roll_result == left_face
            window_left = cursor;
        else
            if roll_result == right_face
                window_right = cursor;
            end
        end
        if window_right < window_left + RESOLUTION
            marching_or_searching = true;
            cursor = window_right * 2 - window_left;
            window_left = window_right;
            left_face = right_face;
        else
            cursor = [window_left window_right] * BACKTRACK_WEIGHT;
        end
    end
    pause(.001);
end
