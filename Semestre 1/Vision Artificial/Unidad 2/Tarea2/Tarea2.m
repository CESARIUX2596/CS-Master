% Read image
img = imread('././imgs/grayscale/aerial.png');
% Add noise to image with custom filter (Percentage must be between 0 and
% 100
noise_percentage = 8;
img2 = CustomNoiseFilters.SaltAndPepper(img,noise_percentage);
% Add noise to image with matlab filter
img3 = imnoise(img,'salt & pepper',0.08);

% Display Images
figure("Name", "Unit 2, HW 2",'NumberTitle','off');
subplot(2, 2, 1);
imshow(img);
title("Original Image");

subplot(2, 2, 2);
imshow(img2)
title("Image with Custom Noise FIlter");

subplot(2, 2, 4);
imshow(img3)
title("Image with Matlab Noise Filter");