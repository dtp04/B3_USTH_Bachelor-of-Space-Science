% edge

clc;
clear;
x = imread('peppers.png'); imshow(x);
x = rgb2gray(x);
figure; imshow (x);
z =edge (x, 'canny',.4);
figure; imshow(z)