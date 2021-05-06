clear;
im=imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH10\Fig1022(a)(building_original).tif');
im=im2double(im);

%Aplicando o filtro LoG do algoritmo de  Marr-Hildreth,com sigma = 4 e n = 25
Log_filter = fspecial('log', [5,5], 4.0); 
img_LOG = imfilter(im, Log_filter, 'symmetric', 'conv');

% Algoritmo de Marr-Hildreth , cruzamentos por zeros utilizará 0 como valor do limiar.
otpMH_0 = edge(im,'log',0,4);

% Cruzamentos por zeros utilizando 4% do maior valor de pixel de b) como limiar.
thrsh4 = 0.4 * max(max(img_LOG)); 
otpMH_40 = edge(im,'log',thrsh4,4);

figure;
  subplot(2,2,1);imshow(im,[]);title('a');
  subplot(2,2,2);imshow(img_LOG,[]);title('b');
  subplot(2,2,3);imshow(otpMH_0,[]);title('c');
  subplot(2,2,4);imshow(otpMH_40,[]);title('d');
