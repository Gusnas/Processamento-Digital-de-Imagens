home;
clear;
im=imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH10\Fig1025(a)(building_original).tif');
im=im2double(im);

% Gradiente Limiarizado
filtromedia = fspecial('average',[5,5]);   % Aplicando filtro de média
imgfiltromedia = imfilter(im, filtromedia, 'symmetric', 'conv'); 
pixel33 = 0.33 * max(max(imgfiltromedia)); % Pegando 33% do maior valor de um pixel para ser o limiar
im_GradLim = imgfiltromedia < pixel33; % Aplicando limiar
[Gmag,Gdir] = imgradient(imgfiltromedia); % Aplicando gradiente.

%Algoritmo de Marr-Hildreth de detectção de bordas
% Aplicando apenas o filtro LoG (Laplacian of Gaussian) , para encontrar o
% valor do limiar (40% do maior valor de pixel)
Logfiltro = fspecial('log', [5,5], 4.0); 
imgLoG = imfilter(im, Logfiltro, 'symmetric', 'conv');
pixel4prcnt = 0.4 * max(max(imgLoG));

%Marr-Hildreth (LoG) , com sigma = 4 e limiar calculado anteriormente.
MHfinal = edge(im,'log',pixel4prcnt,4);


%Algoritmo de Canny
%Limiar inferior = 0.04 , Limiar Superior = 0.10 , Sigma = 4 , 
cannyfinal = edge(im2uint8(im),'canny',[0.04,0.10],4);


figure;
  subplot(2,2,1);
  imshow(im,[]);
  
  subplot(2,2,2);
  imshow(Gmag>0.33);

  subplot(2,2,3);
  imshow(MHfinal,[]);
  
  subplot(2,2,4);
  imshow(cannyfinal,[]);