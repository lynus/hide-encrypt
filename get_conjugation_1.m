function ret = get_conjugation_1( m )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
persistent checkerboard;
if isempty(checkerboard)
    ele = ([255, 0;0,255]);
    ele = [ele, ele;ele,ele];
    checkerboard = [ele, ele;ele,ele];
end
ret = bitxor(m, checkerboard);

end

