
% img = imread('././imgs/keys_coins/5keys12coin.jpg');
% imgd = double(img);
% newSize = [size(imgd, 1) - 60, size(imgd, 2) - 80];
% res = SeamCarving.seamCarving(newSize,imgd);
% imshow(res);

clearvars all;
close all;

% use small pictures because implementation is slow
initialData = imread('././imgs/color/sunflowers.jpg');
image = double(initialData);

figure(1);
plot(1);
imshow(initialData);
title(['Original picture: ' int2str(size(image, 1)) 'x' int2str(size(image, 2))]);

newSize = [size(image, 1) - 60, size(image, 2) - 80];

image = SeamCarving(newSize, image);

figure(2);
plot(2);

imshow(uint8(image));
title(['Modified picture: ' int2str(size(image, 1)) 'x' int2str(size(image, 2))]);

%imwrite(uint8(image), 'sasha-reduced.jpg', 'jpg');
