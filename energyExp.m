initProgram();
delta_t = .001;
loadDice();
cursor = 0;
initDiceFromCursor();
T = 0;
step();
init_E = totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero);
while CM_position(3) > 3
    step();
    T = T + 1;
end
disp([delta_t (totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero) - init_E) / T]);

initProgram();
delta_t = .002;
loadDice();
cursor = 0;
initDiceFromCursor();
T = 0;
step();
init_E = totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero);
while CM_position(3) > 3
    step();
    T = T + 1;
end
disp([delta_t (totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero) - init_E) / T]);

initProgram();
delta_t = .004;
loadDice();
cursor = 0;
initDiceFromCursor();
T = 0;
step();
init_E = totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero);
while CM_position(3) > 3
    step();
    T = T + 1;
end
disp([delta_t (totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero) - init_E) / T]);

initProgram();
delta_t = .008;
loadDice();
cursor = 0;
initDiceFromCursor();
T = 0;
step();
init_E = totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero);
while CM_position(3) > 3
    step();
    T = T + 1;
end
disp([delta_t (totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero) - init_E) / T]);
