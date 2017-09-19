%mudando a escala do tempo de um sinal
%isto e, expandindo ou comprimindo o sinal
%y[n] = x[Mn]

n = 0:0.1:2*pi;

x1 = sin(n);

x2 = cos(n);

x1_comprimido = sin(2*n);
x1_comprimido2 = sin(4*n);

x1_invertido = sin(-2*n);

plot(n, cos(n))
%stem([x1' x1_comprimido' x1_comprimido2'])
