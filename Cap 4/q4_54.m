home;
clear;
I=imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0441(a)(characters_test_pattern).tif');

F=fft2(I);%Fazendo a transformada de fourier na imagem a usando a função do matlab

Fcenter=fftshift(F); %Rearranjando os componentes para o centro
magF=abs(Fcenter); %Pegando os valores absolutos de cada elemento

[M,N]=size(I);

%Definição do filtro passa alta equação 4.8-2
u=0:(M-1);
v=0:(N-1);
u=u-M/2; 
v=v-N/2; 

[V,U]=meshgrid(v,u);
D=sqrt(U.^2+V.^2); 

D0=30; %Selecionando o D0 = 30
H=1-double(D<=D0); 

G=H.*Fcenter; 
g1=real(ifft2(double(ifftshift(G))));
%transformada inversa e em sequencia pega apenas a parte real dos complexos
%resultando na imagem pós filtro passa alta

D01=60; %Selecionando D0 = 60
H1=1-double(D<=D01); 

G1=H1.*Fcenter; 
g2=real(ifft2(double(ifftshift(G1))));

D02 = 160; %Selecionando D0 = 160 
H2=1-double(D<=D01); 

G2=H2.*Fcenter; 
g3=real(ifft2(double(ifftshift(G2))));

figure;
subplot(1,3,1);
imshow(uint8(g1));
title('a');

subplot(1,3,2);
imshow(uint8(g2));
title('b');

subplot(1,3,3);
imshow(uint8(g3));
title('c');
