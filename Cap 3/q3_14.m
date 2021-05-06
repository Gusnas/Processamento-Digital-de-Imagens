img = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0314(a)(100-dollars).tif');

img1 = img;
img2 = img;
img3 = img;
img4 = img;
img5 = img;
img6 = img;
img7 = img;
img8 = img;
[m,n] = size(img);

%checagem de bits em cada plano, se ativo, vira branco, se não, vira preto
for i = 1 : m
    for j = 1 : n
        if(bitget(img1(i,j),1)==1)
            img1(i,j) = 255; %branco
        end
        if(bitget(img1(i,j),1)==0)
            img1(i,j) = 0; %preto
        end
    end
end

for i = 1 : m
    for j = 1 : n
        if(bitget(img2(i,j),2)==1)
            img2(i,j) = 255;
        end
        if(bitget(img2(i,j),2)==0)
            img2(i,j) = 0;
        end
    end
end

for i = 1 : m
    for j = 1 : n
        if(bitget(img3(i,j),3)==1)
            img3(i,j) = 255;
        end
        if(bitget(img3(i,j),3)==0)
            img3(i,j) = 0;
        end
    end
end

for i = 1 : m
    for j = 1 : n
         if(bitget(img4(i,j),4)==1)
            img4(i,j) = 255;
        end
        if(bitget(img4(i,j),4)==0)
            img4(i,j) = 0;
        end
    end
end

for i = 1 : m
    for j = 1 : n
         if(bitget(img5(i,j),5)==1)
            img5(i,j) = 255;
        end
        if(bitget(img5(i,j),5)==0)
            img5(i,j) = 0;
        end
    end
end

for i = 1 : m
    for j = 1 : n
         if(bitget(img6(i,j),6)==1)
            img6(i,j) = 255;
        end
        if(bitget(img6(i,j),6)==0)
            img6(i,j) = 0;
        end
    end
end

for i = 1 : m
    for j = 1 : n
        if(bitget(img7(i,j),7)==1)
            img7(i,j) = 255;
        end
        if(bitget(img7(i,j),7)==0)
            img7(i,j) = 0;
        end
    end
end

for i = 1 : m
    for j = 1 : n
         if(bitget(img8(i,j),8)==1)
            img8(i,j) = 255;
        end
        if(bitget(img8(i,j),8)==0)
            img8(i,j) = 0;
        end
    end
end

subplot(3,3,1);
imshow(img)
subplot(3,3,2);
imshow(img1)
subplot(3,3,3);
imshow(img2)
subplot(3,3,4);
imshow(img3)
subplot(3,3,5);
imshow(img4)
subplot(3,3,6);
imshow(img5)
subplot(3,3,7);
imshow(img6)
subplot(3,3,8);
imshow(img7)
subplot(3,3,9);
imshow(img8)