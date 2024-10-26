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

g1 =double(double(x).* g);          % perform and operation
figure; imshow(g1*0.00002)
mg=max(max(max(g1)));
figure;imshow ((mg-g1)*0.00002)