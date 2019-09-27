folders = ls();
folders = folders(3:end, :);
n_folders = size(folders);
n_folders = n_folders(1);   % MATLAB trying to annoy me? 
% And I can't iter over array of string either! 
for i = 1:n_folders
    if folders(i, 1:7) == 'fig2Png'
        continue;
    end
    cd(folders(i, :));
        disp(folders(i, :));
        figs = ls();
        figs = figs(3:end, :);
        n_figs = size(figs);
        n_figs = n_figs(1);
        for j = 1:n_figs
            name_len = strfind(figs(j, :), '.fig') - 1;
            name = [figs(j, 1:name_len) '.png'];
            disp(name);
            close all;
            openfig(figs(j, :));
            saveas(gcf, name);
        end
    cd('..');
end
