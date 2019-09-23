angular_v = [5 5 0];

angular_v_cross = [
    0            -angular_v(3)  angular_v(2);
    angular_v(3)  0            -angular_v(1);
   -angular_v(2)  angular_v(1)  0           ;
];
norm_angular_v = norm(angular_v);
projection_matrix = angular_v * angular_v' / norm_angular_v ^ 2;
delta_orientation = norm_angular_v * delta_t;
R = projection_matrix ...
    + cos(delta_orientation) * (eye(3) - projection_matrix) ...
    + sin(delta_orientation) * angular_v_cross / norm_angular_v;

for i = 1:45
    X = X * R;
    % render();
    % pause(delta_t);
end

L = [0 0 1000];
CM_linear_v = [0 0 0];
