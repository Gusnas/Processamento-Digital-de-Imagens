clear;
src = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0431(d)(blown_ic_crop).tif');

fft = fft2(mat2gray(src)); %transformada de fourier

espectro = abs(fft);
fase = atan2(imag(fft), real(fft)); 

%multiplicação do ângulo de fase por 0.5
fase1 = fase * 0.5;
res1 = espectro .* exp(fase1.*i);
im_a = ifft2(res1); %transformada discreta de fourier 2D inversa

%multiplicação do ângulo de fase por 0.25
fase2 = fase * 0.25;
res2 = espectro .* exp(fase2.*i);
im_b = ifft2(res2); %transformada discreta de fourier 2D inversa

figure;
subplot(1,2,1);
imshow(im_a);
subplot(1,2,2);
imshow(im_b);
