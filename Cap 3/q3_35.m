home;
clear;

img = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0335(a)(ckt_board_saltpep_prob_pt05).tif');

n=3;
%convoluçao bidimensional
imgOutA=uint8(conv2(img,ones(n)/n^2,'same'));

%filtro de mediana, 3x3
imgOutB=medfilt2(img,[3 3]); 

figure;
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(imgOutA);
subplot(1,3,3);
imshow(imgOutB);
