clc;
clear;
close all;

f = imread('circuit.tif');
f = im2double(f);
F = fft2(f);

% Define Filter
d0 = 3;
HLP = @(d) double(d<=d0);

% Implement filter
[U V] = CreateFreqGrid(size(f,1),size(f,2));
D = sqrt(U.^2 + V.^2);
H = HLP(D);

% apply filter
G = H.*F;
g = ifft2(G);

% show Results
figure;
subplot(2,3,1);
imshow(f);
title('original');

subplot(2,3,2);
imshow(g);
title('filtered image');
