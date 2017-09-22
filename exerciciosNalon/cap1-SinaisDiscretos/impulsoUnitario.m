%impulso unitario eh um sinal de valor em apenas um ponto do dominio, cujo
%valor e 1. No caso geral, o impulso e dado no tempo 0.
%           |1, se n = 0 
%delta[n] = |
%           |0, se n!= 0

close all

k = 3;
n = -10:10;
n_zero = (1+size(n, 2)) / 2;

delta = 0*n;
delta(1, n_zero) = 1;

delta2 = 0*n;
delta2(1, n_zero + k) = 1;

delta3 = 0*n;
delta3(1, n_zero - k) = 1;

figure

% s(1) = subplot(3,1,1);
% s(2) = subplot(3,1,2);
% s(3) = subplot(3,1,3);
subplot(3,1,1);
stem(n, delta);
title('delta(n)')

subplot(3,1,2);
stem(n, delta2);
title('delta(n - 2)')

subplot(3,1,3);
stem(n, delta3);
title('delta(n + 2)')
