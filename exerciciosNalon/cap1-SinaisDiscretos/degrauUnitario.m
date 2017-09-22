%degrau unitario
%       |1, se n >= 0
% u[n] =|
%       |0, se n < 0

n = -10:10;
k=2;
n_zero = (1 + size(n, 2)) / 2;

%degrau unitario
u = zeros(1, size(n, 2));
u(1, n_zero : size(n, 2)) = 1;

%degrau unitario atrasado (deslocado)
u1 = zeros(1, size(n, 2));
u1(1, n_zero + k : size(n, 2)) = 1;

figure

s(1) = subplot(2, 1, 1);
s(2) = subplot(2, 1, 2);

stem(s(1), u)
stem(s(2), u1)