function bits = get_replacable_bits(comp, thre)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
bits = -1;
while true
    try_bit = bits + 1;
    max_comp = 112 * (2^(try_bit+1) -1);
    if max_comp * thre > comp
        break;
    else
        bits = try_bit;
    end
end
end
