close all
clear all

% read the input image
img1=imread('template/template_bw.jpg');

% read the traget template Image
img2=imread('target_images/a_crop.PNG');

% apply templete matching algorithm
result2=tmc(img1,img2);

figure
imshow(img2);
title('Target');

figure
imshow(result2);
title('Matching Result using tmc');
