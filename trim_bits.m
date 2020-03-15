function ret = trim_bits(segment, bits)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
temp = uint8(zeros(8));
temp(:,:) = bitand(bitshift(255, bits), 255);
ret = bitand(segment, temp);
end

