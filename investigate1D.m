% I don't know what this algorithm is called. 
% Please open an issue if you know what it's called. 

initProgram();

RENDER = false;
BACKTRACK_WEIGHT = [.618, 1 - .618]';
RESOLUTION = 0.0001;
if ~RENDER
    hold on;
end

window_left = 0;
window_right = 0;
cursor = .01;
frontier = .01;
loadDice();
initDiceFromCursor();
roll();
left_face = roll_result;
marching_or_searching = true;

while true
    loadDice();
    initDiceFromCursor();
    if RENDER
        if marching_or_searching
            roll()
        else
            rollAndRender();
        end
    else
        roll();
        scatter(cursor, T, 10, FACE_COLOR(roll_result, :));
    end
    if marching_or_searching
        % marching
        if roll_result == left_face
            frontier = frontier + (frontier - window_left) * 1.2;
            window_left = cursor;
            cursor = frontier;
        else
            marching_or_searching = false;
            frontier_face = roll_result;
            window_right = frontier;
            cursor = [window_left window_right] * BACKTRACK_WEIGHT;
        end
    else
        % searching
        if roll_result == left_face
            window_left = cursor;
        else
            if roll_result == frontier_face
                window_right = cursor;
            else
                frontier_face = roll_result;
                frontier = cursor;
                window_right = cursor;
            end
        end
        if window_right < window_left + RESOLUTION
            marching_or_searching = true;
            cursor = frontier + (frontier - window_left) * .4;
            window_left = frontier;
            frontier = cursor;
            left_face = frontier_face;
        else
            cursor = [window_left window_right] * BACKTRACK_WEIGHT;
        end
    end
    pause(.001);
end
