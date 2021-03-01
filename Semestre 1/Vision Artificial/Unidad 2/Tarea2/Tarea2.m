% Read image
img = imread('././imgs/color/matlab_meme.jpg');
% Add noise to image
noise_percentage = 8;
img2 = CustomNoiseFilters.SaltAndPepper(img,noise_percentage);
% Display Images
figure("Name", "Unit 2, HW 2",'NumberTitle','off');
subplot(1, 2, 1);
imshow(img);
title("Original Image");

subplot(1, 2, 2);
imshow(img2)
title("Image with Noise");