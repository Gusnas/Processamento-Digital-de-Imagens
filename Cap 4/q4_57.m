img=imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0457(a)(thumb_print).tif');

[rows, cols] = size(img);

% Aplicando fourier e deslocamento pro centro
FImg = fftshift(fft2(double(img))); 

% Pegar as distancias para o centro da imagem
x = (ones(rows,1) * [1:cols]  - (fix(cols/2)+1))/cols;
y = ([1:rows]' * ones(1,cols) - (fix(rows/2)+1))/rows;

%calcula distancia euclidiana
radius = sqrt(x.^2 + y.^2);

%Filtro passa alta de ordem 4 e frequencia de corte 50 
% radius ? D(u,v) da eq 4.8-2. Isto e, a distancia entre um ponto no
% dominio da frequencia e o centro
Filter = 1 ./ (1.0 + (radius ./ 0.5).^(2*4));
Filter = 1 - Filter;

% Aplicando o filtro na imagem
resultFImg = FImg .* Filter;
resultImg = real(ifft2(ifftshift(resultFImg)));

% Limiarizando a imagem
BW = im2bw(log( 1 + abs(resultImg) ), 0.8);

figure;
subplot(1,3,1);
imshow(img);

subplot(1,3,2);
imshow( log( 1 + abs(resultImg) ), [] );

subplot(1,3,3);
imshow( BW, []);