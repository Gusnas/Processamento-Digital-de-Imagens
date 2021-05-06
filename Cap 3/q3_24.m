home;
clear;

img = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0323(a)(mars_moon_phobos).tif');

src_out = histeq(img) % melhorando contraste atraves da equalização de histograma 

hnorm = imhist(img)/numel(img); % pegando histograma normalizado
cdf = cumsum(hnorm*255)
x = linspace(0,256,256)

figure;

subplot(2,2,1);
plot(x, cdf);
axis([0 256 0 256]);
set(gca, 'xtick', 0:64:256)
set(gca, 'ytick', 0:64:256)

subplot(2,2,2);
imshow(src_out);

subplot(2,2,3);
imhist(src_out);