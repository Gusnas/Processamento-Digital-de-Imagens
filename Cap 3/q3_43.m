home;
clear;

img = (imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0343(a)(skeleton_orig).tif'));

mascara = [[-1, -1, -1], [-1, 8, -1], [-1, -1, -1]];
mascara1 = [[-1, -2, -1], [0, 0, 0], [1, 2, 1]];
mascara2 = [[-1, 0, 1], [-2, 0, 2], [-1, 0, 1]];

gx = conv2(img, mascara1, 'same');
gy = conv2(img, mascara2, 'same');

[gx,gy] = imgradientxy(img);
img_b = conv2(double(img), mascara, 'same');
img_b = img_b - min(min(img_b));
img_b = 255*(img_b/max(max(img_b)));

img_c = imadd(double(img), img_b);

img_d = abs(gx) + abs(gy);

img_e = conv2(img_d, ones(5)/5^2,'same');

img_f = immultiply(img_c, img_e);

img_g = imadd(double(img), img_f);

img_h = (1*(double(img)).^0.5);

figure; 
subplot(2,4,1);
imshow(img, []);

subplot(2,4,2);
imshow(img_b, []);

subplot(2,4,5);
imshow(img_c, []);

subplot(2,4,6);
imshow(img_d, []);

subplot(2,4,3);
imshow(img_e, []);

subplot(2,4,4);
imshow(img_f, []);

subplot(2,4,7);
imshow(img_g, []);

subplot(2,4,8);
imshow(img_h, []);