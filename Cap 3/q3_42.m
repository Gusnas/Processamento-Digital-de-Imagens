home;
clear;

img = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0342(a)(contact_lens_original).tif');
[gx,gy] = imgradientxy(img);
img_b = abs(gx) + abs(gy); %soma dos modulos do vetores x e y da imagem, definição do filtro de sobel

figure;
subplot(1,2,1);
imshow(img, []);
subplot(1,2,2);
imshow(img_b, []);