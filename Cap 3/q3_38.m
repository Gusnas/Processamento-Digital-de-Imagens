home;
clear;

a = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0338(a)(blurry_moon).tif');

mascara1 = [[0,1,0],[1,-4,1],[0,1,0]]; %mascara 3.37(a)
mascara2 = [[1,1,1],[1,-8,1],[1,1,1]]; %mascara 3.37(b)

b = conv2(double(a),mascara1,'same'); %convolução da imagem original com mascara 1

%filtragem usando a máscara 1
c = b-min(min(b)); 
c = uint8((c/max(max(c)))*255);
b = uint8(b);
%adição da imagem original a laplaciana
d = a+b;

filtroY = conv2(double(a),mascara2,'same');

e = a+uint8(filtroY); %adição da laplaciana usando o filtro y

figure;
subplot(2,3,1);
imshow(a);

subplot(2,3,2);
imshow(b);

subplot(2,3,3);
imshow(c);

subplot(2,3,4);
imshow(d);

subplot(2,3,5);
imshow(e);