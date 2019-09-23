function [face] = whichFace(X, FACE_LOOKUP)
%whichFace return which face faces up
%   How it works:
%   1. Sort the vertices according to height
%   2. Take the highest 4 vertices' index
%   3. Use FACE_LOOKUP
[~, order] = sort(X(:, 3), 'descend');
face = FACE_LOOKUP(sum(2 .^ order(1:4)));
end
