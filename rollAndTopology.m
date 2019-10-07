% Examine the ground contact information for a roll. 

ground_contact_history = false(N_POINTS, 1);
step();
T = 1;
while totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero) > confirm_destiny_energy
    step(); 
    T = T + 1;
    now_ground_contact = absolute_X_3 <= 0;
    if any(ground_contact_history(:, end) ~= now_ground_contact)
        ground_contact_history(:, end + 1) = now_ground_contact;
    end
end
roll_result = whichFace(X, FACE_LOOKUP);
