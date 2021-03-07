% Read image
img = imread('././imgs/grayscale/puppy.jpg');
img = rgb2gray(img);
% Add noise to image
saltPepper = imnoise(img,'salt & pepper',0.05);

% Median Filter
median_filtered_img = CustomFilters.medianFilter(saltPepper,3,3);
median_filtered_matlab = medfilt2(saltPepper);

% Mode Filter
mode_filtered_img = CustomFilters.modeFilter(saltPepper,3,3);
mode_filtered_matlab = modefilt(saltPepper);

% Mean Filter
mean_filtered_img = CustomFilters.meanFilter(saltPepper,3,3);
mean_filtered_matlab = imfilter(saltPepper,fspecial('average'));

% Min Filter
min_filtered_img = CustomFilters.minFilter(saltPepper,3,3);

% Max Filter
max_filtered_img = CustomFilters.maxFilter(saltPepper,3,3);


% Median Filter
figure("Name", "Unit2, HW3 Median Filter",'NumberTitle','off');
subplot(2, 2, 1);
imshow(img);
title("Original Image");
subplot(2, 2, 2);
imshow(saltPepper)
title("Image with Salt and Pepper Noise");
subplot(2, 2, 3);
imshow(median_filtered_img)
title("My Median Filter");
subplot(2, 2, 4);
imshow(median_filtered_matlab)
title("Matlab Median Filter");

% Mode Filter
figure("Name", "Unit2, HW3 Mode Filter",'NumberTitle','off');
subplot(2, 2, 1);
imshow(img);
title("Original Image");
subplot(2, 2, 2);
imshow(saltPepper)
title("Image with Salt and Pepper Noise");
subplot(2, 2, 3);
imshow(mode_filtered_img)
title("My Mode Filter");
subplot(2, 2, 4);
imshow(mode_filtered_matlab)
title("Matlab Mode Filter");

% Mean Filter
figure("Name", "Unit2, HW3 Mean Filter",'NumberTitle','off');
subplot(2, 2, 1);
imshow(img);
title("Original Image");
subplot(2, 2, 2);
imshow(saltPepper)
title("Image with Salt and Pepper Noise");
subplot(2, 2, 3);
imshow(mean_filtered_img)
title("My Mean Filter");
subplot(2, 2, 4);
imshow(mean_filtered_matlab)
title("Matlab Median Filter");

% Min and Max Filters
figure("Name", "Unit2, HW3 Min and Max Filters",'NumberTitle','off');
subplot(2, 2, 1);
imshow(img);
title("Original Image");
subplot(2, 2, 2);
imshow(saltPepper)
title("Image with Salt and Pepper Noise")
subplot(2, 2, 3);
imshow(min_filtered_img)
title("My Min Filter");
subplot(2, 2, 4);
imshow(max_filtered_img)
title("My Max Filter");


