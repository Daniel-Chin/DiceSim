% Hypothesis: when the total energy of the system goes below a threshold, 
% The dice reading should not change anymore. 
%
% The purpose is to break the simulation early to reduce computation.
% Test result: PASS

initProgram();

while true
    loadDice();
    L = [rand * 500, rand * 500, rand * 500];
    CM_linear_v = [rand * 10, rand * 10, rand * 10];
    step();
    while totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero) > confirm_destiny_energy
        step();
        % T = T + delta_t;
        % render();
        % pause(.001);
    end
    destiny = whichFace(X, FACE_LOOKUP);
    display(destiny);
    for t = 1:100
        step()
        % T = T + delta_t;
        % render();
        % pause(.001);
    end
    if destiny ~= whichFace(X, FACE_LOOKUP)
        error('Destiny broken');
    end
end
display('PASS');
