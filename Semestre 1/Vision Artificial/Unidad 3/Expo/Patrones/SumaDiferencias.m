clear all;
clc;
Im = rgb2gray(imread('././imgs/color/Cthulhu1.png'));
T = rgb2gray(imread('././imgs/color/Ctlu.png'));

%Im = rgb2gray(imread('././imgs/pattern_recognition/img1.jpg'));
%T = rgb2gray(imread('././imgs/pattern_recognition/p1.jpg'));

[m, n] = size(Im);
Imd = double (Im);
Td = double(T);

[mt, nt] = size(T);

suma = 0;

for re=1:m-mt
    for co=1:n-nt
        indice = 0;
        for rel=0:mt-1
            for col=0:nt-1
            suma=abs(Imd(re+rel,co+col)-Td(rel+1,col+1))+suma;
            end
        end
        da(re,co)=suma;
        suma =0;
    end
end
normImage = mat2gray(da);
%imshow(normImage)

figure('Name', 'Unit3, Suma de Distancias','NumberTitle','off');
subplot(2,2,1);
imshow(Im);
title('Original Image');
subplot(2,2,2);
imshow(T);
title('Pattern');

subplot(2,2,4);
imshow(normImage);
title('Suma de Distancias');
