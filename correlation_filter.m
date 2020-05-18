f = imread('text.png');
f = im2double(f);
a = f(32:45,88:98);

g = imfilter(f,a,'circular');

figure;
subplot(2,2,1);
imshow(f);
title('original Image');

subplot(2,2,2);
imshow(a);
title('pattern ');

th = 0.85*max(g(:));
g2 = double(g>=th);
subplot(2,2,3);
imshow(g2);
title('filtered image');