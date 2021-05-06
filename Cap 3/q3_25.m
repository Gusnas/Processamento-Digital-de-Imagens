home;
clear;
img = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0323(a)(mars_moon_phobos).tif');

% Função de saida
T = ones(1,256);

T(1:127) = linspace(0,10,127);
T(127:200) = linspace(10, 120, 74);
T(200:256) = linspace(120, 256, 57);

T = rescale(T,0,255);


% Histograma especificado
binLocations = linspace(0,255,256);
counts = zeros(256,1);

counts(1:15) = linspace(0,7*10^4,15);
counts(15:28) = linspace(7*10^4, 1.31*10^4,14);
counts(28:190) = linspace(1.31*10^4, 0, 163);
counts(190:194) = linspace(0, 1.31*10^4, 5);
counts(194:256) = linspace(1.31*10^4, 0, 63);

% Imagem equalizada
imgeq = histeq(img);

[M,N] = size(img);
img = uint8(img)+1;

for i = 1:M
    for j = 1:N
        imgeq(i,j) = T(imgeq(i,j));
    end
end

%Mostrando função de transformação, histogramas e imagem equalizada
figure;
subplot(2,2,1);
stem(binLocations,counts, 'Marker','none');
subplot(2,2,2);
plot(0:255,T);
subplot(2,2,3);
imhist(imgeq);
subplot(2,2,4);
imshow(imgeq);