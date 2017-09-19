tamanho = 400;

x = 0:0.01:2*pi;

seno = sin(x);

ruido = 0.1*randn(size(x));

seno_ruido = seno + ruido;

seno_ruido_media = zeros(size(seno_ruido));

plot(x, seno), hold on, plot(x, seno_ruido)

for i = 1 : size(seno_ruido, 2)

    if i >= 1 && i <= tamanho
        seno_ruido_media(1, i) =  sum(seno_ruido(1, i - (i - 1) : i + (i - 1) )) / size( seno_ruido(1, i - (i - 1) : i + (i - 1)), 2);

    elseif i > 4 && i <= size(seno_ruido, 2) - tamanho
        seno_ruido_media(1, i) = (sum(seno_ruido(1, i - tamanho : i + tamanho ))) / (2 * tamanho + 1);

    elseif i > size(seno_ruido, 2) - tamanho
        seno_ruido_media(1, i) = sum(seno_ruido(1, i - (size(seno_ruido, 2) - i) : i + (size(seno_ruido, 2) - i))) / size((seno_ruido(1, i - (size(seno_ruido, 2) - i) : i + (size(seno_ruido, 2) - i))), 2);
    end
end

figure, plot(x, seno), hold on, plot(x, seno_ruido_media)