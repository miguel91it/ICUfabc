%mudando a escala do tempo de um sinal
%isto e, expandindo ou comprimindo o sinal
%y[n] = x[Mn]
fator = 1.5; 

n = 0:0.1:2*pi;

x1 = sin(n);

x1_comprimido = sin(fator * n);
x1_expandido = sin(1 / fator * n);

s = stem([x1' x1_comprimido' x1_comprimido2']);
title('Mudança escala do tempo');
xlabel('n');
ylabel('x1*');
l = legend('sin(n)', 'sin(fator * n)', 'sin(1 / fator * n)');
l.Location = 'northeastoutside'