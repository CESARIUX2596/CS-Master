img1 = rgb2gray(imread('./imgs/guitars/1.jpg'));
img2 = rgb2gray(imread('./imgs/guitars/2.jpg'));
img3 = rgb2gray(imread('./imgs/guitars/3.png'));
img4 = rgb2gray(imread('./imgs/guitars/4.jpg'));
img5 = rgb2gray(imread('./imgs/guitars/5.jpg'));
img6 = rgb2gray(imread('./imgs/guitars/6.jpg'));

imwrite(img2, 'grayscale.png');

edg1 = edge(img1,'Sobel');
edg2 = edge(img2,'Sobel');
edg3 = edge(img3,'Sobel');
edg4 = edge(img4,'Sobel');
edg5 = edge(img5,'Sobel');
edg6 = edge(img6,'Sobel');

% imwrite(edg1, 'acoustic_border_Sobel.png');
% imwrite(edg2, 'double_cut_border_Sobel.png');
% imwrite(edg3, 'les_paul_border_Sobel.png');
% imwrite(edg4, 'strat_border_Sobel.png');
% imwrite(edg5, 'tele_border_Sobel.png');
% imwrite(edg6, 'ukulele_border_Sobel.png');
