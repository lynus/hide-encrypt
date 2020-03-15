function ret = check(bit)
total = 2^bit-1;
for mid = 0:total
    for a = 0:total
        delta = abs(a-mid);
        distance = total-delta;
        x1= distance + mid;
        x2= -distance + mid;
        flag=[0 0];
        if (0 <= x1 && total >= x1)
            flag(1) = 1;
        end
        if (0 <= x2 && total >= x2)
            flag(2) = 1;
        end
        if sum(flag) == 2
            fprintf('a=%d,  mid=%d, x1=%d, x2=%d\n', a, mid, x1, x2);
        end
        if sum(flag) == 0
            fprintf('a=%d,  mid=%d, x1=%d, x2=%d!!!!!!!!\n', a, mid, x1, x2);
        end
    end
end
end