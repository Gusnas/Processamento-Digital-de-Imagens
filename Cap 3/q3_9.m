im = imread('E:\UFC\semestre 8\pdi\DIP3E_Original_Images_CH03\Fig0309(a)(washed_out_aerial_image).tif');  % leitura da imagem % 
imd = double(im); % convertendo para double %

[m,n] = size(imd);

%gamma = 3%
out_gamma3 = abs((1*imd.^3)); 
maximum = max(out_gamma3(:));
minimum = min(out_gamma3(:));

for i = 1 : m
    for j = 1 : n
        out_gamma3(i,j) = (255*out_gamma3(i,j))/(maximum-minimum);
    end
end

out_gamma3 = uint8(out_gamma3);

%gamma = 4%
out_gamma4 = abs((1*imd.^4));
maximum = max(out_gamma4(:));
minimum = min(out_gamma4(:));

for i = 1 : m
    for j = 1 : n
        out_gamma4(i,j) = (255*out_gamma4(i,j))/(maximum-minimum);
    end
end

out_gamma4 = uint8(out_gamma4);

%gamma = 5%
out_gamma5 = abs((1*imd.^5));
maximum = max(out_gamma5(:));
minimum = min(out_gamma5(:));

for i = 1 : m
    for j = 1 : n
        out_gamma5(i,j) = (255*out_gamma5(i,j))/(maximum-minimum);
    end
end

out_gamma5 = uint8(out_gamma5);
%Mostrando as imagens após transformações
figure;
subplot(2,2,1);
imshow(im)

subplot(2,2,2);
imshow(out_gamma3)

subplot(2,2,3);
imshow(out_gamma4)

subplot(2,2,4);
imshow(out_gamma5)