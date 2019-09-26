% gravity computed in step.m
% static friction is meaningless before equilibrium, so ignored

absolute_X_3 = X(:, 3) + CM_position(3);
press_force = - min(0, absolute_X_3) * GROUND_STIFF;

point_v = CM_linear_v + X * angular_v_cross;
press_force = press_force .* (1 - GROUND_DAMP * point_v(:, 3));

point_v_horizontal = point_v .* [1 1 0];
norm_horizontal = norm(point_v_horizontal);
if norm_horizontal ~= 0
    point_orientation_hori = point_v_horizontal / norm_horizontal;
    force = press_force * [0 0 1] - point_orientation_hori .* press_force * GROUND_MU;
else
    force = press_force * [0 0 1];
end
