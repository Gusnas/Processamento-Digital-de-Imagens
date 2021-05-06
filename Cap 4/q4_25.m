img = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0425(a)(translated_rectangle).tif');
img2 = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0424(a)(rectangle).tif');
imgRot = imrotate(img2, -45); %rotacionando a figura em 45 graus

%Aplicando a transformada de fourier
F = fft2(img);
F2 = fft2(imgRot);

%Centralizando a transformada e aplicando a transformada logaritmica em
%ambas imagens
Fc = fftshift(F);
S = log(1 + abs(Fc));
Fc2 = fftshift(F2);
S2 = log(1 + abs(Fc2));

figure;
subplot(2,2,1), imshow(img, [ ]), title('a');
subplot(2,2,2), imshow(S, [ ]), title('b');

subplot(2,2,3), imshow(imgRot, [ ]), title('c');
subplot(2,2,4), imshow(S2, [ ]), title('d');