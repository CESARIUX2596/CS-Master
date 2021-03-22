% This script will apply morfological filters to separate and count objects
% in an image.

% Read Image
img = imread('././imgs/color/hand.jpg');
img2 = rgb2gray(img);  % Convert to grayscale
img2 = imgaussfilt(img2,5);  % Smooth the image with some blur to remove gaps
bw = im2bw(img2);  % Convert into binary iamge
se = strel('disk',30);  
palm = imerode(bw,se);  % Erode image to remove palm area
se = strel('disk',40);
palm = imdilate(palm,se);  % Dilate image to remove palm area
% Shift the bits in image
palm = imcomplement(palm);
% Perform and operation to separate from palm mask
final = bitand(bw,palm);

info = regionprops(final,'Boundingbox') ;

figure("Name", "Unit 2, HW 6 Fingers",'NumberTitle','off');
subplot(2, 2, 1);
imshow(img);
title('Original Image');

subplot(2, 2, 2);
imshow(img);
hold on
for k = 1 : length(info)
     bb = info(k).BoundingBox;
     rectangle('Position', [bb(1),bb(2),bb(3),bb(4)],'EdgeColor','b','LineWidth',2) ;
     lbl_finger = text(bb(1)+15,bb(2),['finger #' num2str(k)]);
     set(lbl_finger,'color','white','fontsize',15)
end
title('Detected Fingers');

subplot(2, 2, 3);
imshow(palm);
title('Palm mask');

subplot(2, 2, 4);
imshow(final);
title(['Detected ' num2str(length(info)) ' Fingers']);
