function noise = get_noise( bits, thre)
noise = uint8(zeros(8, 8));
if bits == -1
    return
end
for i = 1 : bits
    bit_noise = uint8(round(rand(8)));
    comp = get_complexity(bit_noise);
    if comp <= 112 * thre
        bit_noise = get_conjugation(bit_noise);
    end
    noise = noise + bit_noise * (2^(i - 1));
end
end

