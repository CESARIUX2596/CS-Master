% Read Image
img = imread('././imgs/keys_coins/5keys12coin.jpg');
img2 = rgb2gray(img);
% Add some bloor to smoot image removing textures in background
img2 = imgaussfilt(img2,5);
bw = imbinarize(img2);

% Detect coins
pre_1 = bw;
% Try to keep only circular shapes in image
se = strel('disk', 25);
pre_1 = imerode(pre_1,se);
% remove residue from the head of the key
se = strel('diamond',15);
pre_1 = imerode(pre_1,se);
se = strel('disk', 40);
pre_1 = imdilate(pre_1,se);

% Remove coins from original image
pre_2 = bitxor(bw,pre_1);
se = strel('disk',3);
pre_2 = imerode(pre_2,se);
pre_2 = imdilate(pre_2,se);

coins_mask = bitxor(bw,pre_2);
coins_mask = bwmorph(coins_mask,'majority');
coins_mask = bwmorph(coins_mask,'clean');

keys_mask = bitxor(bw,coins_mask);
keys_mask = bwmorph(keys_mask,'clean');
% Label coins and keys
[label_coins, num_coins] = bwlabel(coins_mask);
[label_keys, num_keys] = bwlabel(keys_mask);
key_info  = regionprops(keys_mask,'Boundingbox');
coins_info  = regionprops(coins_mask,'Boundingbox') ;

figure("Name", "Unit 2, HW 6 Keys and Coins",'NumberTitle','off');
subplot(2, 2, 1);
imshow(img);
title('Original Image');

subplot(2, 2, 2);
imshow(img);
hold on
for i = 1 : length(key_info)
     bb_keys = key_info(i).BoundingBox;
     rectangle('Position', [bb_keys(1),bb_keys(2),bb_keys(3),bb_keys(4)],'EdgeColor','b','LineWidth',2) ;
     lbl_key = text(bb_keys(1)+15,bb_keys(2),['key #' num2str(i)]);
     set(lbl_key,'color','white','fontsize',8)
end

for j = 1 : length(coins_info)
     bb_coins = coins_info(j).BoundingBox;
     rectangle('Position', [bb_coins(1),bb_coins(2),bb_coins(3),bb_coins(4)],'EdgeColor','r','LineWidth',2) ;
     lbl_coin = text(bb_coins(1)+15,bb_coins(2),['coin #' num2str(j)]);
     set(lbl_coin,'color','white','fontsize',8)
end
title('Detected items');

subplot(2, 2, 3);
imshow(coins_mask);
title(['Detected ' num2str(num_coins) ' coins']);

subplot(2, 2, 4);
imshow(keys_mask);
title(['Detected ' num2str(num_keys) ' keys']);

figure("Name", "Unit 2, HW 6 Masks",'NumberTitle','off');
subplot(1, 2, 1);
imshow(coins_mask);
title('Detected coins');

subplot(1, 2, 2);
imshow(keys_mask);
title('Detected keys');

figure("Name", "Unit 2, HW 6 counted of coins and keys",'NumberTitle','off');
subplot(1, 1, 1);
imshow(img);
hold on
for i = 1 : length(key_info)
     bb_keys = key_info(i).BoundingBox;
     rectangle('Position', [bb_keys(1),bb_keys(2),bb_keys(3),bb_keys(4)],'EdgeColor','b','LineWidth',2) ;
     lbl_key = text(bb_keys(1)+15,bb_keys(2),['key #' num2str(i)]);
     set(lbl_key,'color','white','fontsize',23)
end

for j = 1 : length(coins_info)
     bb_coins = coins_info(j).BoundingBox;
     rectangle('Position', [bb_coins(1),bb_coins(2),bb_coins(3),bb_coins(4)],'EdgeColor','r','LineWidth',2) ;
     lbl_coin = text(bb_coins(1)+15,bb_coins(2),['coin #' num2str(j)]);
     set(lbl_coin,'color','white','fontsize',23)
end
title('Detected items');
