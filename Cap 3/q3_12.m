img = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0312(a)(kidney).tif');

[m,n] = size(img);
img1 = img;
img2 = img;

%fatiamento das imagens
%limites foram definidos por inspeção
for i = 1 : m
    for j = 1 : n
        if(img1(i,j)>152 && img1(i,j)<=255)
            img1(i,j) = 220;
        else
            img1(i,j) = 0;
        end
    end
end

for i = 1 : m
    for j = 1 : n
        if(img2(i,j)>84 && img2(i,j)<=152)
            img2(i,j) = 0;
        end
    end
end

%mostrando as imagens após fatiamento
subplot(1,3,1);
imshow(img)

subplot(1,3,2);
imshow(img1)

subplot(1,3,3);
imshow(img2)