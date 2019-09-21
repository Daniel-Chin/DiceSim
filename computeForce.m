% gravity computed in step.m

press_force = abs(- X(:, 3)) * GROUND_STIFF;
% static friction is meaningless before equilibrium, so ignored
point_v = CM_linear_v + angular_v_cross * X;
point_v_horizontal = point_v(:, 1:2);
point_v_vertical   = point_v(:, 3);
point_orientation_hori  = point_v_horizontal / norm(point_v_horizontal);
point_orientation_verti = point_v_vertical   / norm(point_v_vertical);
force = press_force * [0 0 -1] ...
    + point_orientation_hori  .* press_force * GROUND_MU ...
    + point_orientation_verti .* press_force * GROUND_DAMP;

% aggregate
force = force + ;
