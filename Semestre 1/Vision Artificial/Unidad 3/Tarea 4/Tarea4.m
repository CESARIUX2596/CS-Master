img1 = rgb2gray(imread('././imgs/grayscale/chameleon.png'));
img2 = rgb2gray(imread('././imgs/color/hedgehog.png'));
w = [-1 -1 -1; 
     -1 8 -1; 
     -1 -1 -1];
out1 = abs(imfilter(double(img1),w));
% T = max(out1(:));
T = 200;
out1 = out1>T;

% img2 = imgaussfilt(img2,2);
out2 = abs(imfilter(double(img2),w));
% T = max(out1(:));
T = 80;
out2 = out2>T;

figure('Name', 'Unit3, HW3 Segmentation Fig 1','NumberTitle','off');
subplot(1,2,1);
imshow(img1);
title('Original Image');
subplot(1,2,2);
imshow(out1);
title('Point Detection');

figure('Name', 'Unit3, HW3 Segmentation Fig 2','NumberTitle','off');
subplot(1,2,1);
imshow(img2);
title('Original Image');
subplot(1,2,2);
imshow(out2);
title('Point Detection');
