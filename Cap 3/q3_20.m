home;
clear;
% Lendo as imagens
A = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0320(1).tif');
B = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0320(2).tif');
C = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0320(3).tif');
D = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0320(4).tif');

% Aumentando o contrate usando a equalização do histograma
A_out = histeq(A);
B_out = histeq(B);
C_out = histeq(C);
D_out = histeq(D);

figure;

%Mostrando imagem original, com contraste e histograma
subplot(4,3,1);
imshow(A);
subplot(4,3,2);
imshow(A_out);
subplot(4,3,3);
imhist(A_out);

subplot(4,3,4);
imshow(B);
subplot(4,3,5);
imshow(B_out);
subplot(4,3,6);
imhist(B_out);

subplot(4,3,7);
imshow(C);
subplot(4,3,8);
imshow(C_out);
subplot(4,3,9);
imhist(C_out);

subplot(4,3,10);
imshow(D);
subplot(4,3,11);
imshow(D_out);
subplot(4,3,12);
imhist(D_out);