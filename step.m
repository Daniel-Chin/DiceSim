% one time step

% linear
total_force = sum(force, 1);
% mass = 1, so total_force equals acceleration
CM_linear_v = CM_linear_v + total_force / delta_t;
CM_position = CM_position + CM_linear_v / delta_t;

% angular
