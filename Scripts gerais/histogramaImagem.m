function histograma = histogramaImagem(imagem)
    
    histograma = zeros(1, 256);

    %loop para contar a quantidade de pixels por niveis de intensidade => n
    for L = 1:size(imagem, 1)
        for C = 1:size(imagem, 2)

            intensidade = imagem(L, C);

            histograma(1, intensidade + 1) = histograma(1, intensidade + 1) + 1;
        end
    end
end