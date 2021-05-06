clear;
img = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0310(b)(washed_out_pollen_image).tif');

% aumentando o contraste
imgContrast = rescale(img,0,255); 
imgContrast = uint8(imgContrast); 

imgMean = mean2(img);
[m,n] = size(img);
imgClear = img;

% limite determinado após testes com diferentes valores
% se nível de branco da imagem for maior que a média, então vira branco
% se for menor que a média, então vira preto

for i = 1 : m
    for j = 1 : n
        if(imgClear(i,j)>imgMean)
            imgClear(i,j) = 255;
        end
        if(imgClear(i,j)<=imgMean)
            imgClear(i,j) = 0;
        end
    end
end

figure;
subplot(2,2,1);
imshow(img)

subplot(2,2,2);
imshow(imgContrast)

subplot(2,2,3);
imshow(imgClear)