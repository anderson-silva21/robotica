clear all
close all
% Limpa todas as variáveis da memória e fecha todas as janelas de plotagem.

TO=trvec2tform([0 0])
plottform2d(TO, frame="O", color="k")
% Cria uma matriz de transformação para uma translação em [0, 0].
% Usa a função plottform2d para plotar um sistema de coordenadas com origem 'O' (preto).

TX=trvec2tform([2 3])
plottform2d(TX, frame="X", color="r")
% Cria uma matriz de transformação para uma translação em [2, 3].
% Usa a função plottform2d para plotar um sistema de coordenadas com origem 'X' (vermelho).

axis([-5 7 -1 5])
grid
% Define os limites dos eixos x e y no gráfico.
% Ativa a exibição da grade no gráfico.

TR=tformr2d(2)
plottform2d(TR, frame="R", color="b")
% Cria uma matriz de transformação para uma rotação de 2 radianos.
% Usa a função plottform2d para plotar um sistema de coordenadas com origem 'R' (azul).

plottform2d(TX*TR, frame="XR", color="g")
plottform2d(TR*TX, frame="RX", color="y")
% Multiplica as matrizes de transformação TX e TR para obter transformações compostas.
% Plota os sistemas de coordenadas resultantes 'XR' (verde) e 'RX' (amarelo).

viscircles([0 0], sqrt(13))
C = [3 2]
plotpoint(C, "ko", label="C")
% Multiplica as matrizes de transformação TX e TR para obter transformações compostas.
% Plota os sistemas de coordenadas resultantes 'XR' (verde) e 'RX' (amarelo).

%TC = trvec2tform(C)*TR
%plottform2d(TC, frame="TC", color="m")
TC = trvec2tform(C)*TR*trvec2tform(-C)*TX
plottform2d(TC, frame="TC", color="m")
% Calcula uma transformação composta que envolve uma translação, rotação e translação.
% Usa a matriz de transformação TR e os vetores de translação C e -C.
% Plota o sistema de coordenadas resultante 'TC' (magenta).

viscircles(C, sqrt(2))
% Desenha um círculo com centro no ponto C e raio igual à raiz quadrada de 2.
