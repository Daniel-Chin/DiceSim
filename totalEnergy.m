function [energy] = totalEnergy(point_v, absolute_X_3, press_force, g, theoratical_energy_zero)
%totalEnergy calclates the total energy in the system
%   The following are taken into considertation for each point: 
%   1. kinetic energy 
%   2. potential energy from gravity
%   3. potential energy from ground force
kinetic = .5 * sum(point_v .^ 2, 'all');
potential_gravity = sum(absolute_X_3) * g;
potential_ground = - sum(min(0, absolute_X_3) .* press_force) / 2;
energy = kinetic + potential_gravity + potential_ground - theoratical_energy_zero;
end
