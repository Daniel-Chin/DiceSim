initProgram();

HONEST = true;
x_range = [];
y_range = [];
z_range = [];
FIG_PATH = '3D_scatter/home/honest_%d.png';
display(FIG_PATH);
input('Is that OK? Enter');

hold on;
resolution = 6;
for p = 1:resolution
    for q = 1:resolution
        for r = 1:resolution
            loadDice();
            pqr2xyz();
            initDiceFromXYZ();
            roll();
            scatter(x, y, z, 10, FACE_COLOR(roll_result, :), 'filled');
        end
        pause(.001);
    end
end
pause(1);

while true
    disp('Saving fig...');
    savefig(sprintf(FIG_PATH, resolution));
    disp('fig saved.');
    resolution = resolution * 2 - 1;
    if resolution > 42  % 21 is the theoretical max for my 4GB RAM
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
                scatter(x, y, z, 10, FACE_COLOR(roll_result, :), 'filled');
                pause(.001);
            end
        end
    end
end
