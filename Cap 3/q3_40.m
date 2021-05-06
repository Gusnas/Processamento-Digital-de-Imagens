home;
clear;

img = single(imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0340(a)(dipxe_text).tif'));

gkernel = fspecial('gaussian',5,3);%função do matlab para filtro gaussiano

img_b = imfilter(img,gkernel);%aplicação do filtro gaussiano na imagem

mascara = img - img_b; % mostra a mascara de nitidez utilizada na figura b

img_d = img + 1*mascara; % aplica a mascara c com k=1

img_e = img + 4.5*mascara; % aplica a mascara c com k=4,5

figure;
subplot(511);
imshow(img,[]);
subplot(512);
imshow(img_b,[]);
subplot(513);
imshow(mascara,[]);
subplot(514);
imshow(img_d,[]);
subplot(515);
imshow(img_e,[]);