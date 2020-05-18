clear;
close all;
f = imread('coins.png');
f = im2double(f);
F = fft2(f)
A = abs(F);

figure;
subplot(1,2,1);
imshow(f);

subplot(1,2,2);
imshow(A);
