%operacoes basicas com sinais
%soma
%subtracao
%multiplicacao
%divisao

n = 0:0.01:2*pi;

x1 = sin(n);

x2 = cos(n);

sum = x1+x2;

diff = x1 - x2;

mult = x1 .* x2;

div = x1 ./ x2;

p = plot(n, x1, n, x2, n, sum);
title('sum x1[n] + x2[n]')
xlabel('n')
ylabel('x[n]')
p(1).Color = 'red';
p(2).Color = 'blue';
p(3).Color = 'black';
p(3).LineStyle = '--';

figure, p = plot(n, x1, n, x2, n, diff);
title('diff x1[n] - x2[n]')
xlabel('n')
ylabel('x[n]')
p(1).Color = 'red';
p(2).Color = 'blue';
p(3).Color = 'black';
p(3).LineStyle = '--';

figure, p = plot(n, x1, n, x2, n, mult);
title('mult x1[n] * x2[n]')
xlabel('n')
ylabel('x[n]')
p(1).Color = 'red';
p(2).Color = 'blue';
p(3).Color = 'black';
p(3).LineStyle = '--';

figure, p = plot(n, x1, n, x2, n, div);
title('div x1[n] / x2[n]')
xlabel('n')
ylabel('x[n]')
p(1).Color = 'red';
p(2).Color = 'blue';
p(3).Color = 'black';
p(3).LineStyle = '--';
