%read the image
img1 = imread('././imgs/bw/wirebond_mask.png');
img2 = imread('././imgs/grayscale/building.png');
img3 = imread('././imgs/color/figures_plane.jpeg');
img4 = imread('././imgs/color/flower.jpg');

[sobel_x, sobel_y, sobel] = BorderDetector.sobel(img1);

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

[prewitt_x, prewitt_y, prewitt] = BorderDetector.prewitt(img2);

figure('Name', 'Unit3, HW1 Prewitt','NumberTitle','off');
subplot(2,2,1);
imshow(img2);
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

[roberts_x, roberts_y, roberts] = BorderDetector.roberts(img3);

figure('Name', 'Unit3, HW1 Roberts','NumberTitle','off');
subplot(2,2,1);
imshow(img3);
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

gradient = BorderDetector.morph_gradient(img4);
figure('Name', 'Unit3, HW1 Gradient','NumberTitle','off');
subplot(1,2,1);
title('Original image');
imshow(img4);
subplot(1,2,2);
imshow(gradient);
title('Morphological Gradient');

laplace = BorderDetector.laplace4(img4);
figure('Name', 'Unit3, HW1 Laplace4','NumberTitle','off');
subplot(1,2,1);
title('Original image');
imshow(img4);
subplot(1,2,2);
imshow(laplace);
title('Laplace4');

laplace = BorderDetector.laplace8(img4);
figure('Name', 'Unit3, HW1 Laplace8','NumberTitle','off');
subplot(1,2,1);
title('Original image');
imshow(img4);
subplot(1,2,2);
imshow(laplace);
title('Laplace8');