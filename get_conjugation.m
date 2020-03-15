function ret = get_conjugation(m)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
persistent checkerboard;
if isempty(checkerboard)
    ele = uint8([1, 0;0,1]);
    ele = [ele, ele;ele,ele];
    checkerboard = [ele, ele;ele,ele];
end
ret = bitxor(m, checkerboard);
end
