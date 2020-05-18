clear;
close all;
A = zeros(64,64);
phi = zeros(64,64);
%A(1,1)=309;
%A(3,3)= 2000;
%A(1,4)=3000;
% A(4,4)=3000;
% A(5,6)= 2000;
% A(6,6) = 4000;
A(33,33)= 4008;
%construct F
F = A.*exp(1j*phi);
f = ifft2(F)

figure;
subplot(1,3,1);
imshow(A);
title('A');

subplot(1,3,2);
imshow(phi);
title('phi');

subplot(1,3,3);
imshow(f);
title('f');



