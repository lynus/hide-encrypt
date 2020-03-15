pic = imread('lenna.png');
thre = 0.3;
hidden_bytes = 0;
[row, col, ch] = size(pic);
red = pic(:,:,1);
gray = rgb2gray(pic);
gray_orig = gray;
stego = zeros(row, col);
segment = zeros(8, 8);
for r = 1 : row/8
    for c = 1 : col/8
       segment = gray((r - 1) * 8 + 1: r * 8, (c - 1) * 8 +1: c * 8);
       comp = get_complexity_1(segment);
       bits = get_replacable_bits(comp, thre);
       hidden_bytes = hidden_bytes + 8 * bits;
       if bits > 0
           segment = trim_bits(segment, bits);
           noise = get_noise(bits, thre);
           gray((r - 1) * 8 + 1: r * 8, (c - 1) * 8 +1: c * 8) = segment + noise;
       end
    end
end
imshow(gray);
fprintf('can hide %d KB\n', uint32(hidden_bytes)/1024);