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
cursor = RESOLUTION;
marching_or_searching = true;

hold on;
while true
    loadDice();
    initDiceFromCursor();
    roll();
    if T<100
        disp(2);
    end
    scatter(cursor, T, 5, FACE_COLOR(roll_result, :), 'filled');
    if marching_or_searching
        % marching
        if roll_result == left_face
            window_right = cursor + (cursor - window_left) * 1.2;
            window_left = cursor;
            cursor = window_right;
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
            window_right = cursor;
            right_face = roll_result;
        end
        if window_right < window_left + RESOLUTION
            marching_or_searching = true;
            step_len = max(window_right - window_left, RESOLUTION);
            window_left = window_right;
            left_face = right_face;
            cursor = window_left + step_len;
        else
            cursor = [window_left window_right] * BACKTRACK_WEIGHT;
        end
    end
    pause(.001);
end
