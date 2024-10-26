% XOR & XNOR --> to detect different
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

not_g =max(max(max(g)))-g;
not_x = 255-x;

g3 =double (x) .* not_g + double(not_x) .*double (g);          % + to perform addition operation
figure; imshow(g3*0.00002)
mg=max(max(max(g3)));
figure;imshow ((mg-g3)*0.00002)