home;
clear;
img = imread("E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0333(a)(test_pattern_blurring_orig).tif");

n = 3;
b = uint8(conv2(img, ones(n)/n^2,'same')); %convolução da img com o filtro de média n/n^2
n = 5;
c = uint8(conv2(img, ones(n)/n^2,'same'));
n = 9;
d = uint8(conv2(img, ones(n)/n^2,'same'));
n = 15;
e = uint8(conv2(img, ones(n)/n^2,'same'));
n = 35;
f = uint8(conv2(img, ones(n)/n^2,'same'));

figure; 
subplot(2,3,1);
imshow(img);
subplot(2,3,2);
imshow(b);
subplot(2,3,3);
imshow(c);
subplot(2,3,4);
imshow(d);
subplot(2,3,5);
imshow(e);
subplot(2,3,6);
imshow(f);