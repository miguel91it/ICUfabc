%mudando a escala da amplitude de um sinal
%y[n] = c*x[n]

n = 0:0.1:2*pi;

x1 = sin(n);

x2 = cos(n);

x1_maior = 3 * x1;
x1_maior2 = 7 * x1;

x2_menor = 0.7 * x2;
x2_menor2 = 0.3 * x2;

s = stem([x1' x1_maior' x1_maior2']);
title('Aumentando a amplitude');
xlabel('n');
ylabel('A * sen(n)');
s(1).Color = 'red';
s(2).Color = 'blue';
s(3).Color = 'black';
s(2).LineStyle = '--';
s(3).LineStyle = '--';

figure, s = stem([x2', x2_menor', x2_menor2']);
%figure, p = plot(n, x2, n, x2_menor, n, x2_menor2);
title('Diminuindo a amplitude');
xlabel('n');
ylabel('A * cos(n)');
s(1).Color = 'red';
s(2).Color = 'blue';
s(3).Color = 'black';
s(2).LineStyle = '--';
s(3).LineStyle = '--';