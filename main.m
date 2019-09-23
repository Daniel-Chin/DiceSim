% in this experiment, point mass is 1, so it doesn't appear anywhere. 
% the moment of intertia of a cube is uniform, so rotation of I yields no change. 

initProgram();
initDice(); % Give the dice an initial condition
while true
    step();
    T = T + delta_t;
    render();
    display(totalEnergy(point_v, absolute_X_3, press_force, - GRAVITY(3), theoratical_energy_zero));
    display(whichFace(X, FACE_LOOKUP));
    pause(delta_t);
end
