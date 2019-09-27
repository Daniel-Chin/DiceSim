step();
T = 1;
while totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero) > confirm_destiny_energy
    step();
    T = T + 1;
end
roll_result = whichFace(X, FACE_LOOKUP);
