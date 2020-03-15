function c = get_change_vector(v)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
c = 0;
for p = 2:length(v)
    if v(p) ~= v(p-1)
        c = c+1;
    end
end
end

