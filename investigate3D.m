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
map = int8(zeros(resolution, resolution, resolution));
for p = 1:resolution
    for q = 1:resolution
        for r = 1:resolution
            loadDice();
            pqr2xyz();
            initDiceFromXYZ();
            roll();
            map(p, q, r) = roll_result;
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
    disp('expanding matrix...');
    new_map = - ones(resolution, resolution, resolution);
    new_map(1:2:resolution, 1:2:resolution) = map;
    map = new_map;  % https://www.mathworks.com/matlabcentral/answers/16277-renaming-large-variables-programmatically
    clear new_map;
    disp('matrix expanded.');
    
    for p = 1:resolution
        for q = 1:resolution
            for r = 1:resolution
                if map(p, q, r) == -1
                    loadDice();
                    pqr2xyz();
                    initDiceFromXYZ();
                    roll();
                    map(p, q, r) = roll_result;
                    scatter(x, y, z, 10, FACE_COLOR(roll_result, :), 'filled');
                    pause(.001);
                end
            end
        end
    end
end
