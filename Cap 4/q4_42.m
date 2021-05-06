input_image = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0442(a)(characters_test_pattern).tif');

[M, N] = size(input_image); 
  
% Aplicando a transformada de fourier da imagem  
FT_img = fft2(double(input_image)); 
  
% Designando as frequência de cortes
D0 = 10; 
D1 = 30;
D2 = 60;
D3 = 160;
D4 = 460;
  
% Construindo o filtro
u = 0:(M-1); 
idx = find(u>M/2); 
u(idx) = u(idx)-M; 
v = 0:(N-1); 
idy = find(v>N/2); 
v(idy) = v(idy)-N; 
  
% A função meshgrid retorna
% uma matriz 2d que contem as coordenadas dos vetores v e u 
[V, U] = meshgrid(v, u); 
  
% Calculando Distância Euclidiana
D = sqrt(U.^2+V.^2); 
  
% Comparando com a frequência de corte e
% determinando a máscara do filtro
H0 = double(D <= D0); 
H1 = double(D <= D1);
H2 = double(D <= D2);
H3 = double(D <= D3);
H4 = double(D <= D4);

% Convolução entre a imagem transformada de Fourrier e a mascara 
G0 = H0.*FT_img; 
G1 = H1.*FT_img; 
G2 = H2.*FT_img; 
G3 = H3.*FT_img; 
G4 = H4.*FT_img; 

% Obtendo a imagem resultante através da transformada de fourier inversa
% da imagem "convolucionada" utilizando da função
output_image_10 = real(ifft2(double(G0)));
output_image_30 = real(ifft2(double(G1))); 
output_image_60 = real(ifft2(double(G2))); 
output_image_160 = real(ifft2(double(G3))); 
output_image_460 = real(ifft2(double(G4))); 

figure;
subplot(3, 2, 1);
imshow(input_image);

subplot(3, 2, 2);
imshow(output_image_10,[]);

subplot(3, 2, 3);
imshow(output_image_30,[]);

subplot(3, 2, 4);
imshow(output_image_60,[]);

subplot(3, 2, 5);
imshow(output_image_160,[]);

subplot(3, 2, 6);
imshow(output_image_460,[]);