% Detección de líneas
clear all;
clc;
%I = rgb2gray(imread('././imgs/color/lines.jpg'));
I = rgb2gray(imread('././imgs/color/vh.jpg'));
%I = rgb2gray(imread('././imgs/grayscale/pcb_xray2.jpg'));
%I = rgb2gray(imread('././imgs/grayscale/pcb_xray.png'));
%I = rgb2gray(imread('././imgs/grayscale/aerial.png'));

%figure;imshow(I);

w(:,:,1)=[-1, -1, -1;2, 2, 2;-1, -1, -1];%Horizontal
w(:,:,3)=rot90(w(:,:,1));%Vertical
w(:,:,2)=[-1, -1, 2;-1, 2, -1;2, -1, -1];%45
w(:,:,4)=rot90(w(:,:,2));%-45

for i=1:4
    II(:,:,i)=imfilter(I,w(:,:,i));
end


figure('Name', 'Unit3, HW3 Segmentation Fig 1','NumberTitle','off');
subplot(2,3,1);
imshow(I);
title('Original Image');
subplot(2,3,2);
imshow(II(:,:,1));
title('Horizontal');
subplot(2,3,3);
imshow(II(:,:,2));
title('Vertical');
subplot(2,3,5);
imshow(II(:,:,3));
title('45');
subplot(2,3,6);
imshow(II(:,:,4));
title('-45');


