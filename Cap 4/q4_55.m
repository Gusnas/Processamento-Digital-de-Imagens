home;
clear;
I=imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0441(a)(characters_test_pattern).tif');

PS = paddedsize(size(I)); %determina o melhor preenchenchimento para fourier

H1 = hpfilter('btw', PS(1), PS(2), 30,1); %cria filtro passa alta de ordem 2 e D0 = 30
F1=fft2(double(I),size(H1,1),size(H1,2)); %transformada de fourier de acordo com o filtro
G1 = H1.*F1; 
g1 = real(ifft2(double(ifftshift(G1))));
g1 = g1(1:size(I,1), 1:size(I,2)); %ajuste no tamanho da imagem

H2 = hpfilter('btw', PS(1), PS(2), 60,1); %cria filtro passa alta de ordem 2 e D0 = 60
F2=fft2(double(I),size(H2,1),size(H2,2)); 
G2 = H2.*F2; 
g2 = real(ifft2(double(ifftshift(G2))));
g2 = g2(1:size(I,1), 1:size(I,2)); 

H3 = hpfilter('btw', PS(1), PS(2), 160,1); %cria filtro passa alta de ordem 2 e D0 = 160
F3=fft2(double(I),size(H3,1),size(H3,2));
G3 = H3.*F3; 
g3 = real(ifft2(double(ifftshift(G3))));
g3 = g3(1:size(I,1), 1:size(I,2));

figure;
subplot(1,3,1);
imshow(uint8(g1));
title('a');

subplot(1,3,2);
imshow(uint8(g2));
title('b');

subplot(1,3,3);
imshow(uint8(g3));
title('c');