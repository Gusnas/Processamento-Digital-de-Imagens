home;
clear;
img = imread("E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0326(a)(embedded_square_noisy_512).tif");

%imagem equalizada global
img_hist = histeq(img);

%imagem equalizada local 3x3
out_img = blkproc(img,[3,3], @histeq);

figure; 
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_hist);
subplot(1,3,3);
imshow(out_img);