% one time step

% update center of mass velocity
total_force = sum(force, 1) + GRAVITY * N_POINTS;
CM_linear_v = CM_linear_v + total_force / N_POINTS * delta_t;

% update center of mass position
CM_position = CM_position + CM_linear_v * delta_t;

% update angular momentum (L)
total_troque = sum(cross(force, X));
L = L + total_troque * delta_t;

% angular velocity
angular_v = I \ L';
angular_v_cross = [
    0            -angular_v(3)  angular_v(2);
    angular_v(3)  0            -angular_v(1);
   -angular_v(2)  angular_v(1)  0           ;
];

% R
norm_angular_v = norm(angular_v);
if norm_angular_v ~= 0
    projection_matrix = angular_v * angular_v' / norm_angular_v ^ 2;
    delta_orientation = norm_angular_v * delta_t;
    R = projection_matrix ...
        + cos(delta_orientation) * (eye(3) - projection_matrix) ...
        + sin(delta_orientation) * angular_v_cross / norm_angular_v;

    % angular update X
    X = X * R;
end

computeForce();
