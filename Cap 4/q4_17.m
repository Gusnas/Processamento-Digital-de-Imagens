home;
clear;
a = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH04\Fig0417(a)(barbara).tif');

[rows, columns] = size(a);

b = imresize(a,[0.5*rows 0.5*columns], 'bilinear');

[row, col] = size(b);
r2 = row*2;
c2 = col*2;
I2 = zeros(r2,c2);
I2(1:2:r2, 1:2:c2) = b;
for i = 1:2:r2
    for j = 1:2:c2
        I2(i,j+1) = I2(i,j);
        I2(i+1,j) = I2(i,j);
        I2(i+1,j+1) = I2(i,j);
    end
end

b = I2;

c = medfilt2(a,[3 3]);
c = imresize(c,[0.5*rows 0.5*columns], 'bilinear');


[row, col] = size(c);
r2 = row*2;
c2 = col*2;
I2 = zeros(r2,c2);
I2(1:2:r2, 1:2:c2) = c;
for i = 1:2:r2
    for j = 1:2:c2
        I2(i,j+1) = I2(i,j);
        I2(i+1,j) = I2(i,j);
        I2(i+1,j+1) = I2(i,j);
    end
end

c = I2;

figure; 
subplot(1,3,1);
imshow(a, []);
subplot(1,3,2);
imshow(b, []);
subplot(1,3,3);
imshow(c, []);