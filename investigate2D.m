initProgram();

hold on;

resolution = 4;
map = int8(zeros(resolution, resolution));
for p = 1:resolution
    for q = 1:resolution
        loadDice();
        pq2xy();
        initDiceFromXY();
        roll();
        map(p, q) = roll_result;
        scatter(x, y, 10, FACE_COLOR(roll_result, :), 'filled');
    end
    pause(.001);
end
pause(1);

while true
    resolution = resolution * 2 - 1;
    % expand matrix
    map(1:2:resolution, 1:2:resolution) = map;
    map(2:2:resolution - 1, 1:2:resolution) = map(1:2:resolution - 2, 1:2:resolution);
    map(:, 2:2:resolution - 1) = map(:, 1:2:resolution - 2);
    
    % fill edge
    for p = 1:2:resolution - 2
        for q = 1:2:resolution - 2
            if map(p, q) ~= map(p + 2, q) || true
                p = p + 1;
                loadDice();
                pq2xy();
                initDiceFromXY();
                roll();
                map(p, q) = roll_result;
                scatter(x, y, 10, FACE_COLOR(roll_result, :), 'filled');
                p = p - 1;
            end
            % Do the same on q. (How to simplify?)
            if map(p, q) ~= map(p, q + 2) || true
                q = q + 1;
                loadDice();
                pq2xy();
                initDiceFromXY();
                roll();
                map(p, q) = roll_result;
                scatter(x, y, 10, FACE_COLOR(roll_result, :), 'filled');
            end
            pause(.001);
        end
    end
    
    % fill hole
    for p = 2:2:resolution - 1
        for q = 2:2:resolution - 1
            map(p, q) = map(p - 1, q - 1);
            if any(map(p - 1:p + 1, q - 1:q + 1) ~= map(p, q), 'all') || true
                loadDice();
                pq2xy();
                initDiceFromXY();
                roll();
                map(p, q) = roll_result;
                scatter(x, y, 10, FACE_COLOR(roll_result, :), 'filled');
            end
            pause(.001);
        end
    end
    savefig(sprintf('2D_scatter/honest_%d.fig', resolution));
end
