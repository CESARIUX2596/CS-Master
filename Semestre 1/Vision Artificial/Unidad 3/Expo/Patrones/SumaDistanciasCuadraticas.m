clear all;
clc;
% Im = rgb2gray(imread('././imgs/color/Cthulhu1.png'));
% T = rgb2gray(imread('././imgs/color/Ctlu.png'));
Im = rgb2gray(imread('././imgs/color/raport_rosa-original.png'));
T = rgb2gray(imread('././imgs/color/pattern.png'));

[m, n] = size(Im);
Imd=double(Im);
Td = double(T);
[mt,nt] = size(T);
suma = 0;
for re=1:m-mt
    for co=1:n-nt
        indice=0;
        for rel=0:mt-1
            for col=0:nt-1
                suma= (Imd(re+rel,co+col)-Td(rel+1,col+1))^2 + suma;
            end
        end
        de(re,co)=sqrt(suma);
        suma=0;
    end
end

normImage = mat2gray(de);
%imshow(normImage)

figure('Name', 'Unit3, Suma de Distancias Cuadraticas','NumberTitle','off');
subplot(2,2,1);
imshow(Im);
title('Original Image');
subplot(2,2,2);
imshow(T);
title('Pattern');

subplot(2,2,4);
imshow(normImage);
title('Suma de Distancias Cuadraticas');
