%read the image
% img1 = imread('././imgs/bw/wirebond_mask.png');
% img2 = imread('././imgs/grayscale/building.png');
% img3 = imread('././imgs/color/figures_plane.jpeg');
% img4 = imread('././imgs/bw/A.png');
% img5 = imread('././imgs/keys_coins/5keys12coin.jpg');
%img6 = imread('././imgs/grayscale/turbine.png');
img1 = imread('././imgs/color/figures_plane.jpeg');

[sobel_x, sobel_y, sobel] = BorderDetector.sobel(img1);
imwrite(sobel, 'sobel.png');
figure('Name', 'Unit3, HW1 Sobel','NumberTitle','off');
subplot(2,2,1);
imshow(img1);
title('Original Image');
subplot(2,2,2);
imshow(sobel);
title('Sobel');
subplot(2,2,3);
imshow(sobel_x);
title('Sobel X');
subplot(2,2,4);
imshow(sobel_y);
title('Sobel Y');

[prewitt_x, prewitt_y, prewitt] = BorderDetector.prewitt(img1);
imwrite(prewitt, 'prewitt.png');
figure('Name', 'Unit3, HW1 Prewitt','NumberTitle','off');
subplot(2,2,1);
imshow(img1);
title('Original Image');
subplot(2,2,2);
imshow(prewitt);
title('Prewitt');
subplot(2,2,3);
imshow(prewitt_x);
title('Prewitt X');
subplot(2,2,4);
imshow(prewitt_y);
title('Prewitt Y');

[roberts_x, roberts_y, roberts] = BorderDetector.roberts(img1);
imwrite(roberts, 'roberts.png');
figure('Name', 'Unit3, HW1 Roberts','NumberTitle','off');
subplot(2,2,1);
imshow(img1);
title('Original Image');
subplot(2,2,2);
imshow(roberts);
title('Roberts');
subplot(2,2,3);
imshow(roberts_x);
title('Roberts X');
subplot(2,2,4);
imshow(roberts_y);
title('Roberts Y');

gradient = BorderDetector.morph_gradient(img1);
imwrite(gradient, 'gradient.png');
figure('Name', 'Unit3, HW1 Gradient','NumberTitle','off');
subplot(1,2,1);
imshow(img1);
title('Original image');
subplot(1,2,2);
imshow(gradient);
title('Morphological Gradient');

laplace4 = BorderDetector.laplace4(img1);
imwrite(laplace4, 'laplace4.png');
figure('Name', 'Unit3, HW1 Laplace 4','NumberTitle','off');
subplot(1,2,1);
imshow(img1);
title('Original image');
subplot(1,2,2);
imshow(laplace4);
title('Laplace 4');

laplace8 = BorderDetector.laplace8(img1);
imwrite(laplace8, 'laplace8.png');
figure('Name', 'Unit3, HW1 Laplace 8','NumberTitle','off');
subplot(1,2,1);
imshow(img1);
title('Original image');
subplot(1,2,2);
imshow(laplace8);
title('Laplace 8');

lap_of_gauss = BorderDetector.laplacian_of_gaussian(img1);
imwrite(lap_of_gauss, 'lap_of_gauss.png');
figure('Name', 'Unit3, HW1 Laplacian of Gaussian','NumberTitle','off');
subplot(1,2,1);
imshow(img1);
title('Original image');
subplot(1,2,2);
imshow(lap_of_gauss);
title('Laplacian of Gaussian');

canny = BorderDetector.canny(img1);
imwrite(canny, 'canny.png');
figure('Name', 'Unit3, HW1 Canny','NumberTitle','off');
subplot(1,2,1);
imshow(img1);
title('Original image');
subplot(1,2,2);
imshow(canny);
title('Canny');

zero_crossing = BorderDetector.zero_crossing(img1);
imwrite(zero_crossing, 'zero_crossing.png');
figure('Name', 'Unit3, HW1 Zero Crossing','NumberTitle','off');
subplot(1,2,1);
imshow(img1);
title('Original image');
subplot(1,2,2);
imshow(zero_crossing);
title('Zero Crossing');

