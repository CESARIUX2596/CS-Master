% The Following program calculates the histogram of an image and displays 
% the calculated histogram comparing it with the build in matlab function
img = imread('./imgs/grayscale/aerial.png');
[y, x, channels] = size(img);
% Check if image is a grayscale image
if channels > 1
    % Convert to grayscale
    img = rgb2gray(img);
    [y, x, channels] = size(img);
end

% Equalize image
eq_img = histeq(img, 256);

histArr = zeros(1, 256);
colorArr = zeros(1, 256);
cnt = 0;
for i = 1:256
    colorArr(i) = cnt;
    cnt = cnt+1;
end
for i = 1:y

    for j = 1:x
        value = img(i, j) + 1;
        histArr(value) = histArr(value) + 1;
    end

end

%colorbar('southoutside');
%imhist(img);
figure("Name", "Tarea 3 Figura 1")

subplot(2, 2, 1);
imshow(img);
title("Original image");

subplot(2, 2, 2);
% bar(histArr);
bar(colorArr,histArr);
%h = colorbar('southoutside');
%set(h, 'ylim', [0 255])
title("Calculated Histogram");

subplot(2, 2, 4);
imhist(img);
title("Histogram with imhist");

figure("Name", "Tarea 3 Figura 2")
subplot(2, 2, 1);
imshow(img);
title("Original image");
subplot(2, 2, 2);
imshow(eq_img);
title("Equalized image");

subplot(2, 2, 4);
imhist(eq_img);
title("Equalized Image Histogram");
