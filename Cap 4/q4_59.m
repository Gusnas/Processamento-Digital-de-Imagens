src = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0459(a)(orig_chest_xray).tif');


fft = fftshift(fft2(double(src)));

[M,N] = size(src);
D0 = 40; %frequencia de corte

%Filtro passa-alta com filtro gaussiano

res = hpfilter('gaussian', M, N, D0); %passa alta
res = res.*fft2(src);
im_b = ifft2(res);
im_b = uint8(real(im_b));

%Filtragem de ênfase de alta frequência
filtro = 0.5 + 0.75 * (1 - H);
enf = filtro * fft;
res2 = ifftshift(enf);
im_c = ifft2(res2);
im_c = uint8(real(im_c));

%Equalização de histograma da filtragem de ênfase de alta frequência
im_d = histeq(im_c, 256);
im_d = uint8(im_d);

figure;
subplot(2,2,1);
imshow(src);
subplot(2,2,2);
imshow(im_b);
subplot(2,2,3);
imshow(im_c);
subplot(2,2,4);
imshow(im_d);
