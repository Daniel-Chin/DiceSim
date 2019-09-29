% initProgram();

% HONEST = true;
% x_range = [0 .1];
% y_range = [0 .1];
% FIG_PATH = '2D_scatter_T/home/honest_try.png';
% display(FIG_PATH);
% input('Is that OK? Enter');

disp(SCATTER_PATH);
hold on;
resolution = 6;
map = int8(zeros(resolution, resolution));
for p = 1:resolution
    for q = 1:resolution
        loadDice();
        pq2xy();
        initDiceFromXY();
        roll();
        map(p, q) = roll_result;
        if T_AXIS
            scatter3(x, y, T, 10, FACE_COLOR(roll_result, :), 'filled');
        else
            scatter(x, y, 10, FACE_COLOR(roll_result, :), 'filled');
        end
    end
    pause(.001);
end
pause(1);

while true
    disp('Saving fig...');
    saveas(gcf, sprintf(SCATTER_PATH, resolution));
    disp('fig saved.');
    resolution = resolution * 2 - 1;
    if T_AXIS
        % input('Drag and rotate the graph! Then press Enter...');
    end
    %if resolution > 100
    if resolution > 50
        break;
    end
    disp(sprintf('resolution is now %d...', resolution));
    if ~HONEST
        disp('expanding matrix...');
        map(1:2:resolution, 1:2:resolution) = map;
        map(2:2:resolution - 1, 1:2:resolution) = map(1:2:resolution - 2, 1:2:resolution);
        map(:, 2:2:resolution - 1) = map(:, 1:2:resolution - 2);
        disp('matrix expanded.');
    end
    
    % fill edge
    for p = 1:2:resolution - 2
        for q = 1:2:resolution - 2
            if HONEST || map(p, q) ~= map(p + 2, q)
                p = p + 1;
                loadDice();
                pq2xy();
                initDiceFromXY();
                roll();
                if ~HONEST
                    map(p, q) = roll_result;
                end
                if T_AXIS
                    scatter3(x, y, T, 10, FACE_COLOR(roll_result, :), 'filled');
                else
                    scatter(x, y, 10, FACE_COLOR(roll_result, :), 'filled');
                end
                p = p - 1;
            end
            % Do the same on q. (How to simplify?)
            if HONEST || map(p, q) ~= map(p, q + 2)
                q = q + 1;
                loadDice();
                pq2xy();
                initDiceFromXY();
                roll();
                if ~HONEST
                    map(p, q) = roll_result;
                end
                if T_AXIS
                    scatter3(x, y, T, 10, FACE_COLOR(roll_result, :), 'filled');
                else
                    scatter(x, y, 10, FACE_COLOR(roll_result, :), 'filled');
                end
            end
            pause(.001);
        end
    end
    
    % fill hole
    for p = 2:2:resolution - 1
        for q = 2:2:resolution - 1
            if ~HONEST
                map(p, q) = map(p - 1, q - 1);
            end
            if HONEST || any(map(p - 1:p + 1, q - 1:q + 1) ~= map(p, q), 'all')
                loadDice();
                pq2xy();
                initDiceFromXY();
                roll();
                if ~HONEST
                    map(p, q) = roll_result;
                end
                if T_AXIS
                    scatter3(x, y, T, 10, FACE_COLOR(roll_result, :), 'filled');
                else
                    scatter(x, y, 10, FACE_COLOR(roll_result, :), 'filled');
                end
            end
            pause(.001);
        end
    end
end
