clear all;
clc;
img1 = rgb2gray(imread('././imgs/grayscale/chameleon.png'));
img2 = rgb2gray(imread('././imgs/color/hedgehog.png'));

w = [-1 -1 -1; 
     -1 8 -1; 
     -1 -1 -1];
 
% First T Value
T = 60;
out1_1 = abs(imfilter(double(img1),w));
out1_1 = out1_1>T;
out1_2 = abs(imfilter(double(img2),w));
out1_2 = out1_2>T;

figure('Name', 'Unit3, HW3 Segmentation Fig 1 T = 60','NumberTitle','off');
subplot(2,2,1);
imshow(img1);
title('Original Image');
subplot(2,2,2);
imshow(out1_1);
title('Point Detection T = 60');
subplot(2,2,3);
imshow(img2);
title('Original Image');
subplot(2,2,4);
imshow(out1_2);
title('Point Detection T = 60');

T = 100;
out1_1 = abs(imfilter(double(img1),w));
out1_1 = out1_1>T;
out1_2 = abs(imfilter(double(img2),w));
out1_2 = out1_2>T;


figure('Name', 'Unit3, HW3 Segmentation Fig 2 T = 100','NumberTitle','off');
subplot(2,2,1);
imshow(img1);
title('Original Image');
subplot(2,2,2);
imshow(out1_1);
title('Point Detection T = 100');
subplot(2,2,3);
imshow(img2);
title('Original Image');
subplot(2,2,4);
imshow(out1_2);
title('Point Detection T = 100');


T = 150;
out1_1 = abs(imfilter(double(img1),w));
out1_1 = out1_1>T;
out1_2 = abs(imfilter(double(img2),w));
out1_2 = out1_2>T;

figure('Name', 'Unit3, HW3 Segmentation Fig 3 T = 150','NumberTitle','off');
subplot(2,2,1);
imshow(img1);
title('Original Image');
subplot(2,2,2);
imshow(out1_1);
title('Point Detection T = 150');
subplot(2,2,3);
imshow(img2);
title('Original Image');
subplot(2,2,4);
imshow(out1_2);
title('Point Detection T = 150');

T = 200;
out1_1 = abs(imfilter(double(img1),w));
out1_1 = out1_1>T;
out1_2 = abs(imfilter(double(img2),w));
out1_2 = out1_2>T;

figure('Name', 'Unit3, HW3 Segmentation Fig 4 T = 300','NumberTitle','off');
subplot(2,2,1);
imshow(img1);
title('Original Image');
subplot(2,2,2);
imshow(out1_1);
title('Point Detection T = 300');
subplot(2,2,3);
imshow(img2);
title('Original Image');
subplot(2,2,4);
imshow(out1_2);
title('Point Detection T = 300');

T = 400;
out1_1 = abs(imfilter(double(img1),w));
out1_1 = out1_1>T;
out1_2 = abs(imfilter(double(img2),w));
out1_2 = out1_2>T;

figure('Name', 'Unit3, HW3 Segmentation Fig 5 T = 400','NumberTitle','off');
subplot(2,2,1);
imshow(img1);
title('Original Image');
subplot(2,2,2);
imshow(out1_1);
title('Point Detection T = 400');
subplot(2,2,3);
imshow(img2);
title('Original Image');
subplot(2,2,4);
imshow(out1_2);
title('Point Detection T = 400');