clc;
clear;
close all;
f = imread('rice.png');
f = im2double(f);
F = fft2(f);
h = fspecial('motion',10,45);

H1 = freqz2(h,size(f,1),size(f,2))
H = ifftshift(H1);

G = H.*F;

g = ifft2(G);

gs = imfilter(f,h,'conv');

dg = g - gs;



figure;
subplot(2,3,1);
imshow(f);
title('original');

subplot(2,3,2);
imshow(h);
title('motionfilter');

subplot(2,3,3);
imshow(g);
title('filtered image');

subplot(2,3,4);
imshow(F);
title('original fft');

subplot(2,3,5);
imshow(H);
title('motionfilter fft');

subplot(2,3,6);
imshow(G);
title('filtered image fft');



