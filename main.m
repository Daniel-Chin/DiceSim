% in this experiment, point mass is 1, so it doesn't appear anywhere. 
% the moment of intertia of a cube is uniform, so rotation of I yields no change. 

initProgram();

loadDice();
initDice(); % Give the dice an initial condition
while true
    rollAndRender();
end
