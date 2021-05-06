src = double(imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0431(d)(blown_ic_crop).tif'));

[rows, cols] = size(src);

H = lpfilter('gaussian', rows, cols, 8); %passa baixa
H2 = hpfilter('gaussian', rows, cols, 8); %passa alta
H3 = hpfilter('gaussian', rows, cols, 8)+0.85; %passa alta com a = 0,85

F = fft2(src);%fourier na imagem original

G = H.*F;
G2 = H2.*F;
G3 = H3.*F;

%voltando para o dominio do tempo
d = real(ifft2(G));
e = real(ifft2(G2));
f = real(ifft2(G3));

figure; 
subplot(1,3,1);
imshow(d, [])
subplot(1,3,2);
imshow(e, []);
subplot(1,3,3);
imshow(f, []);