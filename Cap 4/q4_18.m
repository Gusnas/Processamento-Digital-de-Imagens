home;
clear;
% Lendo as imagem
a = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0418(a)(ray_traced_bottle_original).tif')
%reduzindo a imagem pelo metodo de interpolacao bilinear utilizando imresize 
b = imresize(a,[256,256],'Method','bilinear');
%aplicando filtro de media 5x5
c1 = medfilt2(a,[5 5]);
%reduzindo a imagem filtrada para 25% de seu tamanho original
c2 = imresize(c1,[256,256],'Method','bilinear');

figure;
%Mostrando imagem original
subplot(1,3,1);
imshow(a);
title('A');

%Mostrando imagem reduzida pelo metodo de interpolacao bilinear
subplot(1,3,2);
imshow(b);
title('B');

%Mostrando imagem reduzida com filtro de media
subplot(1,3,3);
imshow(c2);
title('C')