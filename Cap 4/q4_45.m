home;
clear;
src = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0441(a)(characters_test_pattern).tif');

[rows, cols] = size(src);

H1 = lpfilter('btw', rows, cols, 10, 2);
H2 = lpfilter('btw', rows, cols, 30, 2);
H3 = lpfilter('btw', rows, cols, 60, 2);
H4 = lpfilter('btw', rows, cols, 160, 2);
H5 = lpfilter('btw', rows, cols, 460, 2);

F = fft2(double(src), size(H1,1), size(H1,2));

G1 = H1.*F;
G2 = H2.*F;
G3 = H3.*F;
G4 = H4.*F;
G5 = H5.*F;

b = mat2gray(real(ifft2(G1)));
c = mat2gray(real(ifft2(G2)));
d = mat2gray(real(ifft2(G3)));
e = mat2gray(real(ifft2(G4)));
f = mat2gray(real(ifft2(G5)));

b = b(1:size(src,1),1:size(src,2));
c = c(1:size(src,1),1:size(src,2));
d = d(1:size(src,1),1:size(src,2));
e = e(1:size(src,1),1:size(src,2));
f = f(1:size(src,1),1:size(src,2));

figure; 
subplot(3,2,1);
imshow(src)
subplot(3,2,2);
imshow(b)
subplot(3,2,3);
imshow(c)
subplot(3,2,4);
imshow(d)
subplot(3,2,5);
imshow(e)
subplot(3,2,6);
imshow(f)