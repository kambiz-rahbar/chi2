clc
clear
close all

Observed = normrnd(0, 1, [1000, 1]);
Expected = normrnd(0, 1, [1000, 1]);

[h, p_value, k2, df] = k2_test(Observed, Expected);

fprintf(' h: %d\n p_value: %.4f\n k2: %.4f\n df: %d\n', h, p_value, k2, df);


