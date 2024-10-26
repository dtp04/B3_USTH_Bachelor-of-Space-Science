clc;
clear;
x =imread('peppers.png');
imshow(x)

[r,c,s] = size(x);

g(r,c,s)=0;
[m,n ] = ginput(2);                 %tap the screen twice
g(min(n):max(n),min(m):max(m),:)=1;
g =g*255;
figure;imshow(g)

g2 =double(double(x) + g);          % + to perform addition operation
figure; imshow(g2*0.005)
mg=max(max(max(g2)));
figure;imshow ((mg-g2)*0.005)