% Read image from file
img = imread('../imgs/color/hedgehog.png');
img2 = imread('../imgs/color/flower.jpg');
img3 = imread('../imgs/color/racoon.png');
img4 = imread('../imgs/color/strawberries_coffee_full_color.png');
% Calculate shape of image
"Shape of img1 (Hedgehog)"
img_size = size(img);
height = img_size(1)
width = img_size(2)
dim = img_size(3)
%Create some variations of the image
windowSize = 15;
avg3 = ones(windowSize) / windowSize^2;
blurredImage = imfilter(img2, avg3, 'conv'); % Blur image
rotated_img = imrotate(img3,180); % 180 Degree rotation in image
grayscale = rgb2gray(img4); % Convert image to Grayscale
%%% DISPLAY IMAGES
% Create figure
figure("Name","Tarea 2")
subplot(2,2,1); 
imshow(img);
title("Original Image");

subplot(2,2,2); 
imshow(grayscale);
title("Gray Scale");

subplot(2,2,3); 
imshow(rotated_img);
title("Rotated 180 Degrees");

subplot(2,2,4); 
imshow(blurredImage);
title("Blurred Image");
