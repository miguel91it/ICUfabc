%deslocamento no dominio da funcao, no caso, no tempo do sinal
%deslocamento e, tambem, conhecido como atraso
%atraso no sinal y e dado por: y[n] = x[n - k], k pertencente aos inteiros
%k eh o atraso aplicado ao sinal original
k = 1;

n = 0:0.1:2*pi;

y = sin(n) + log(n);

y1 = sin(n - k) + log(n - k);
y2 = sin(n + k) + log(n + k);

s = stem([y' y1' y2']);
title('Deslocamento no tempo');
xlabel('n');
ylabel('y*');
l = legend('sin(n) + log(n)', 'sin(n-k) + log(n-k)', 'sin(n+k) + log(n+k)');
l.Location = 'northeastoutside';