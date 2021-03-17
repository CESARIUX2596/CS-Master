% Apply the filters from the class CustomFiltes
% Read image
img = imread('././imgs/grayscale/puppy.jpg');
img = rgb2gray(img);
% Types of Noises

salt_pepper_noise = imnoise(img,'salt & pepper',0.05);
gaussian_noise =  imnoise(img,'gaussian');
uniform_noise = imnoise(img,'speckle',0.13);

% Median Filter
median_salt_pepper = CustomFilters.medianFilter(salt_pepper_noise,3,3);
median_gaussian = CustomFilters.medianFilter(gaussian_noise,3,3);
median_uniform = CustomFilters.medianFilter(uniform_noise,3,3);

% Mode Filter
mode_salt_pepper = CustomFilters.modeFilter(salt_pepper_noise,3,3);
mode_gaussian = CustomFilters.modeFilter(gaussian_noise,3,3);
mode_uniform = CustomFilters.modeFilter(uniform_noise,3,3);

% Max Filter

max_salt_pepper = CustomFilters.maxFilter(salt_pepper_noise,3,3);
max_gaussian = CustomFilters.maxFilter(gaussian_noise,3,3);
max_uniform = CustomFilters.maxFilter(uniform_noise,3,3);

% Min Filter

min_salt_pepper = CustomFilters.minFilter(salt_pepper_noise,3,3);
min_gaussian = CustomFilters.minFilter(gaussian_noise,3,3);
min_uniform = CustomFilters.minFilter(uniform_noise,3,3);

% Mean Filter

mean_salt_pepper = CustomFilters.meanFilter(salt_pepper_noise,3,3);
mean_gaussian = CustomFilters.meanFilter(gaussian_noise,3,3);
mean_uniform = CustomFilters.meanFilter(uniform_noise,3,3);

% Gauss Filter

gauss_salt_pepper = imgaussfilt(salt_pepper_noise,3);
gauss_gaussian = imgaussfilt(gaussian_noise,3);
gauss_uniform = imgaussfilt(uniform_noise,3);

figure('Name', 'Unit2, HW4 Gaussian Noise','NumberTitle','off');
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
imshow(gaussian_noise);
title('Image with Gaussian Noise');

figure('Name', 'Unit2, HW4 Impulsive Noise','NumberTitle','off');
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
imshow(salt_pepper_noise);
title('Image with Impulsive Noise');

figure('Name', 'Unit2, HW4 Uniform   Noise','NumberTitle','off');
subplot(1,2,1);
imshow(img);
title('Original Image');
subplot(1,2,2);
imshow(uniform_noise);
title('Image with Uniform Noise');

% Median Filter

figure('Name', 'Unit2, HW3 Median Filter','NumberTitle','off');
subplot(2, 4, 1);
imshow(img);
title('Original Image');
subplot(2, 4, 2);
imshow(gaussian_noise);
title('Image with Gaussian Noise');
subplot(2, 4, 3);
imshow(salt_pepper_noise);
title('Image with Impulsive Noise');
subplot(2, 4, 4);
imshow(uniform_noise);
title('Image with Uniform Noise');
subplot(2, 4, 6);
imshow(median_gaussian);
title('Median Filter with Gaussian Noise');
subplot(2, 4, 7);
imshow(median_salt_pepper);
title('Median Filter with Impulsive Noise');
subplot(2, 4, 8);
imshow(median_uniform);
title('Median Filter with Uniform Noise');

% Mode Filter

figure('Name', 'Unit2, HW3 Mode Filter','NumberTitle','off');
subplot(2, 4, 1);
imshow(img);
title('Original Image');
subplot(2, 4, 2);
imshow(gaussian_noise);
title('Image with Gaussian Noise');
subplot(2, 4, 3);
imshow(salt_pepper_noise);
title('Image with Impulsive Noise');
subplot(2, 4, 4);
imshow(uniform_noise);
title('Image with Uniform Noise');
subplot(2, 4, 6);
imshow(mode_gaussian);
title('Mode Filter with Gaussian Noise');
subplot(2, 4, 7);
imshow(mode_salt_pepper);
title('Mode Filter with Impulsive Noise');
subplot(2, 4, 8);
imshow(mode_uniform);
title('Mode Filter with Uniform Noise');

% Max Filter

figure('Name', 'Unit2, HW3 Max Filter','NumberTitle','off');
subplot(2, 4, 1);
imshow(img);
title('Original Image');
subplot(2, 4, 2);
imshow(gaussian_noise);
title('Image with Gaussian Noise');
subplot(2, 4, 3);
imshow(salt_pepper_noise);
title('Image with Impulsive Noise');
subplot(2, 4, 4);
imshow(uniform_noise);
title('Image with Uniform Noise');
subplot(2, 4, 6);
imshow(max_gaussian);
title('Max Filter with Gaussian Noise');
subplot(2, 4, 7);
imshow(max_salt_pepper);
title('Max Filter with Impulsive Noise');
subplot(2, 4, 8);
imshow(max_uniform);
title('Max Filter with Uniform Noise');

% Min Filter

figure('Name', 'Unit2, HW3 Min Filter','NumberTitle','off');
subplot(2, 4, 1);
imshow(img);
title('Original Image');
subplot(2, 4, 2);
imshow(gaussian_noise);
title('Image with Gaussian Noise');
subplot(2, 4, 3);
imshow(salt_pepper_noise);
title('Image with Impulsive Noise');
subplot(2, 4, 4);
imshow(uniform_noise);
title('Image with Uniform Noise');
subplot(2, 4, 6);
imshow(min_gaussian);
title('Min Filter with Gaussian Noise');
subplot(2, 4, 7);
imshow(min_salt_pepper);
title('Min Filter with Impulsive Noise');
subplot(2, 4, 8);
imshow(min_uniform);
title('Min Filter with Uniform Noise');

% Mean Filter

figure('Name', 'Unit2, HW3 Mean Filter','NumberTitle','off');
subplot(2, 4, 1);
imshow(img);
title('Original Image');
subplot(2, 4, 2);
imshow(gaussian_noise);
title('Image with Gaussian Noise');
subplot(2, 4, 3);
imshow(salt_pepper_noise);
title('Image with Impulsive Noise');
subplot(2, 4, 4);
imshow(uniform_noise);
title('Image with Uniform Noise');
subplot(2, 4, 6);
imshow(mean_gaussian);
title('Mean Filter with Gaussian Noise');
subplot(2, 4, 7);
imshow(mean_salt_pepper);
title('Mean Filter with Impulsive Noise');
subplot(2, 4, 8);
imshow(mean_uniform);
title('Mean Filter with Uniform Noise');

% Mean Filter

figure('Name', 'Unit2, HW3 Gaussian Filter','NumberTitle','off');
subplot(2, 4, 1);
imshow(img);
title('Original Image');
subplot(2, 4, 2);
imshow(gaussian_noise);
title('Image with Gaussian Noise');
subplot(2, 4, 3);
imshow(salt_pepper_noise);
title('Image with Impulsive Noise');
subplot(2, 4, 4);
imshow(uniform_noise);
title('Image with Uniform Noise');
subplot(2, 4, 6);
imshow(gauss_gaussian);
title('Gauss Filter with Gaussian Noise');
subplot(2, 4, 7);
imshow(gauss_salt_pepper);
title('Gauss Filter with Impulsive Noise');
subplot(2, 4, 8);
imshow(gauss_uniform);
title('Gauss Filter with Uniform Noise');

