FACE_LOOKUP = zeros(2 ^ 9);
FACE_LOOKUP(sum(2 .^ FACE_CORNER(1:6, :), 2)) = [1:6];
