step();
T = delta_t;
i = 20;
while i > 0
    step(); step(); step(); step(); step(); step(); step(); step(); 
    T = T + delta_t * 8;
    render();
    pause(.001);
    if totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero) < confirm_destiny_energy
        i = i - 1;  % just to show the end
    end
end
roll_result = whichFace(X, FACE_LOOKUP);
