src = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0441(a)(characters_test_pattern).tif');

[rows, cols] = size(src);
%aplicando filtro passa baixa gaussiano com diferentes frequencias de corte
H1 = lpfilter('gaussian', rows, cols, 10);
H2 = lpfilter('gaussian', rows, cols, 30);
H3 = lpfilter('gaussian', rows, cols, 60);
H4 = lpfilter('gaussian', rows, cols, 160);
H5 = lpfilter('gaussian', rows, cols, 460);
%transformada de fourier na imagem original
F = fft2(double(src), size(H1,1), size(H1,2));

G1 = H1.*F;
G2 = H2.*F;
G3 = H3.*F;
G4 = H4.*F;
G5 = H5.*F;

%voltando para o dominio do tempo
b = mat2gray(real(ifft2(G1)));
c = mat2gray(real(ifft2(G2)));
d = mat2gray(real(ifft2(G3)));
e = mat2gray(real(ifft2(G4)));
f = mat2gray(real(ifft2(G5)));

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