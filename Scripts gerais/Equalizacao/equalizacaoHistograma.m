gs2 = imread('C:\Users\Joao\Desktop\gs2.jpg');

%retira a terceira dimensao
gs2_2d = gs2(1:end, 1:end, 1);

%define total de pixels
MN = size(gs2_2d, 1) * size(gs2_2d, 2);

%define vetor de 256 posicoes para receber a equalizacao, em . flutuante
s_ = zeros(1, 256);

%inicializa a matriz para a imagem equalizada
gs2_2d_equali = zeros(size(gs2_2d));

%calcula o histograma da imagem original
n = histogramaImagem(gs2_2d);

%calcula as probabilidades do histograma
p = n / MN;

%soma de todas posicoes de p deve dar 1.0, e da
%sum(sum(p))

%loop para encontrar o valor da intensidade equalizada sk
for k = 1 : 256
    s_(1, k) = 255 * sum(p(1, 1:k));
end

%arredonda as intensidades equalizadas
s = round(s_);

%loop pra criar a imagem equalizada
for L = 1:size(gs2_2d_equali, 1)
    for C = 1 : size(gs2_2d_equali, 2)
        
        intensidadeOriginal = gs2_2d(L, C);
        
        intensidadeMapeada = s(1, intensidadeOriginal + 1);
        
        gs2_2d_equali(L, C) = intensidadeMapeada;
    end
end

histogram(n)
%imshow(gs2_2d), figure, imshow(gs2_2d_equali)
%figure, stem(p)
%figure, imshow(gs2), figure, plot(p(1,:))