function comp = get_complexity( m )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
s = size(m);
assert(s(1) == s(2));
s = s(1);
comp = 0;
for row = 1:8
    for col = 2:8
        if m(row, col) ~= m(row, col-1)
            comp = comp +1;
        end
    end
end
for col =1:8
    for row = 2:8
        if m(row, col) ~= m(row - 1, col)
            comp = comp +1;
        end
    end
end  
end
