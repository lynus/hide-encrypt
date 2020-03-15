function comp = get_complexity_1(m)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
comp = 0;
for row = 1:8
    for col = 2:8
        comp = comp + abs(m(row, col) - m(row, col-1));            
    end
end
for col =1:8
    for row = 2:8
        comp = comp + abs(m(row, col) - m(row - 1, col));
    end
end  

end

