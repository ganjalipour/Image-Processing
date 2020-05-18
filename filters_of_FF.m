clear;
close all;
f = imread('rice.png');

f = im2double(f);


% first method
h = fspecial('sobel')
g1 = imfilter(f,h);

% second method
F = fft2(f);
H = fft2(h,size(f,1),size(f,2));
G2 = H.*F;
g2 = ifft2(G2);


figure;
subplot(1,3,1);
imshow(g1);

H =fft2(h);
subplot(1,3,2);
imshow(g2);

subplot(1,3,3);
imshow(h);