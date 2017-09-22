%xc(t) = cos(pi * t)
%xc(t) = e^(-j * pi/4 * t)
%
%
%

Ta = [0.5 1 2];

t1 = 0 : Ta(1, 1) : 2*pi;
t2 = 0 : Ta(1, 2) : 2*pi;
t3 = 0 : Ta(1, 3) : 2*pi;

x1 = cos(pi * t1);
x2 = cos(pi * t2);
x3 = cos(pi * t3);

figure

s(1) = subplot(3, 1, 1);
s(2) = subplot(3, 1, 2);
s(3) = subplot(3, 1, 3);

stem(s(1), t1, x1)
stem(s(2), t2, x2)
stem(s(3), t3, x3)

x1


