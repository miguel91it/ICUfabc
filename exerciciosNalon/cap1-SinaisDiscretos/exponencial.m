A = 1;
n = -100:0.1:100;


alpha = 2;

x = A * alpha .^ n;

plot(x)

%----------------

alpha2 = 0.5;

x2 = A * alpha2 .^ n;

figure
plot(x2)