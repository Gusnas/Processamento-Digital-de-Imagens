home;
clear;
img = imread("E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0327(a)(tungsten_original).tif");

%imagem equalizada global
src_eq = histeq(img);

%imagem equalizada estatisticas locais
e = 4.0;
k0 = 0.4;
k1 = 0.02;
k2 = 0.4;

mediag = mean2(img);
stdg = std2(img);
mediaxy = conv2(img, ones(3)/9, 'same');
stdxy = stdfilt(img);

[linhas, colunas] = size(img);
out_img = zeros(linhas,colunas);

for i = 1:linhas
    for j = 1:colunas
        
        if mediaxy(i,j) <= k0*mediag && k1*stdg <= stdxy(i,j) <= k2*stdg
            out_img(i,j) = e*img(i,j);
        else
            out_img(i,j) = img(i,j);
        end
    end
end

out_img = uint8(out_img);
%Mostrando as imagens
figure; 
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(src_eq);
subplot(1,3,3);
imshow(out_img);