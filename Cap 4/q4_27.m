home;
clear;

src = imread("E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0427(a)(woman).tif");
rectangle = imread("E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0424(a)(rectangle).tif");

[M,N] = size(rectangle);

dft = fft2(src,M,N); %fourier na imagem da mulher
dft_rect = fft2(rectangle); %fourier na imagem do retangulo
angulofaseimg = angle(dft); %pegando o angulo de fase da imagem da mulher

% Construindo imagem só com angulo
fftB = 1.*exp(i*angulofaseimg);
imageC = real(ifft2(fftB)); %fourier inversa pra pegar a imagem
imageC = imageC(1:size(src,1), 1:size(src,2));

% Construindo espectro da imagem da mulher
espectro = log(1+abs(fftshift(dft)));

% Imagem com espectro do retangulo e angulo de fase da mulher
fftE = abs(dft_rect).*exp(i*angulofaseimg);
imageE = ifft2(fftE);
imageE = imageE(1:size(src,1), 1:size(src,2));

% Imagem com espectro da imagem da mulher e angulo do retangulo
fftF = abs(dft).*exp(i*angle(dft_rect));
imageF = ifft2(fftF);

figure; 
subplot(2,3,1);
imshow(src);

subplot(2,3,2);
imshow(angulofaseimg,[-pi,pi]);

subplot(2,3,3);
imshow(imageC,[]);

subplot(2,3,4);
imshow(espectro, []);

subplot(2,3,5);
imshow(imageE, []);

subplot(2,3,6);
imshow(imageF, []);