disp(SCATTER_PATH);

hold on;
resolution = 6;
for p = 1:resolution
    for q = 1:resolution
        for r = 1:resolution
            loadDice();
            pqr2xyz();
            initDiceFromXYZ();
            roll();
            scatter3(x, y, z, 8, FACE_COLOR(roll_result, :), 'filled');
        end
        pause(.001);
    end
end
pause(1);

while true
    disp('Saving fig...');
    savefig(sprintf(SCATTER_PATH, resolution));
    disp('fig saved.');
    resolution = resolution * 2 - 1;
    if resolution > 22
        break;
    end
    
    for p = 1:resolution
        for q = 1:resolution
            for r = 1:resolution
                if mod(p, 2) == 1 && mod(q, 2) == 1 && mod(r, 2) == 1
                    continue;
                end
                loadDice();
                pqr2xyz();
                initDiceFromXYZ();
                roll();
                scatter3(x, y, z, 8, FACE_COLOR(roll_result, :), 'filled');
                pause(.001);
            end
        end
    end
end
