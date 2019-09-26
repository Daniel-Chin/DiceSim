step();
T = delta_t;
while totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero) > confirm_destiny_energy
    step(); step(); step(); step(); step(); step(); step(); step(); 
    T = T + delta_t * 8;
    render();
    pause(.001);
end
roll_result = whichFace(X, FACE_LOOKUP);
