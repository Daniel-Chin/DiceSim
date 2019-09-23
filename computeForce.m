% gravity computed in step.m
% static friction is meaningless before equilibrium, so ignored

absolute_X_3 = X(:, 3) + CM_position(3);
press_force = - min(0, absolute_X_3) * GROUND_STIFF;
force = [0 0 1] .* press_force;

point_v = CM_linear_v + X * angular_v_cross;
point_v_horizontal = point_v .* [1 1 0];
norm_horizontal = norm(point_v_horizontal);
if norm_horizontal ~= 0
    point_orientation_hori = point_v_horizontal / norm_horizontal;
    force = force - point_orientation_hori .* press_force * GROUND_MU;
end

point_v_vertical   = point_v .* [0 0 1];
norm_vertical = norm(point_v_vertical);
if norm_vertical ~= 0
    point_orientation_verti = point_v_vertical / norm_vertical;
    force = force - point_orientation_verti .* press_force * GROUND_DAMP;
end
