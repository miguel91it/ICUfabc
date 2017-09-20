%diferencas: Dx[n] = x[n] - x[n-1]
%a diferenca entre duas funcoes iguais, deslocadas no tempo, pode ser
%entendida, tambe, como uma aproximacao para a derivada da funcao
%observe, para cada par de funcao abaixo, que o grau das funcoes caem de
%uma unidade quando a diferenca eh realizada

n = 0:0.01:4*pi;

x = sin(n) + log(n);
y = sin(n);
z = 2*n +4;
w = n.*n;

x1 = sin(n - 1) + log(n - 1);
y1 = sin(n - 1);
z1 = 2*(n-1)+4;
w1 = (n-1).*(n-1);

f = figure;
f.Position = [120 78 1024 720];

ax = subplot(2,2,1);
ay = subplot(2,2,2);
az = subplot(2,2,3);
aw = subplot(2,2,4);

plot(ax, n, x, n, x1, n, x-x1);
plot(ay, n, y, n, y1, n, y-y1);
plot(az, n, z, n, z1, n, z-z1);
plot(aw, n, w, n, w1, n, w-w1);