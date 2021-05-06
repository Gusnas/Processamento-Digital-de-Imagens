clear;
img=imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0334(a)(hubble-original).tif');

n = 15;
a = uint8(conv2(img,ones(n)/n^2,'same'));
maximo = max(max(a)); 
lim = 0.25*maximo; 

[linhas,colunas] = size(a);
b=zeros(linhas,colunas); 

for i=1:linhas
    for j=1:colunas
        if a(i,j) < lim
            b(i,j)=0;
        else 
            b(i,j)=1;
        end
    end
end

figure;
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(a);
subplot(1,3,3);
imshow(b);