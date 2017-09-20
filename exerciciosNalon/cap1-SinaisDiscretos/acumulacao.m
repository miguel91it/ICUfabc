%acumulacao eh dada pelo acumulo de valores passados ate um determinado
%instante
% y[n] = soma (k de menos infinito a k = n) de x[k]

n = -pi:0.01:pi;

N = size(n, 2);

x = 0*n+2;  %constante
x1 = 10*n;   %primeiro grau
x2 = 3*n.^2; %segundo grau
x3 = 4*n.^3; %terceiro grau

soma_x = 0;
soma_x1 = 0;
soma_x2 = 0;
soma_x3 = 0;

x_ac = zeros(1, N);
x1_ac = zeros(1, N);
x2_ac = zeros(1, N);
x3_ac = zeros(1, N);

%percorre o total de posicoes do vetor dominio, n
for i = 1 : N
    
    soma_x  =  soma_x +  x(1, i);
    soma_x1 = soma_x1 + x1(1, i);
    soma_x2 = soma_x2 + x2(1, i);
    soma_x3 = soma_x3 + x3(1, i);
    
    x_ac(1, i) = soma_x;
    x1_ac(1, i) = soma_x1;
    x2_ac(1, i) = soma_x2;
    x3_ac(1, i) = soma_x3;
end    

f = figure;
f.Position = [120 78 1024 720];

ax     = subplot(4,2,1);
ax_ac  = subplot(4,2,2);
ax1    = subplot(4,2,3);
ax1_ac = subplot(4,2,4);
ax2    = subplot(4,2,5);
ax2_ac = subplot(4,2,6);
ax3    = subplot(4,2,7);
ax3_ac = subplot(4,2,8);

plot(ax, n, x)
plot(ax_ac, n, x_ac)
plot(ax1, n, x1)
plot(ax1_ac, n, x1_ac)
plot(ax2, n, x2)
plot(ax2_ac, n, x2_ac)
plot(ax3, n, x3)
plot(ax3_ac, n, x3_ac)