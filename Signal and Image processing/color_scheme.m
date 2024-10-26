clc;
clear
x=imread("E:\USTH\Signal processing\603b4dbe2cdaf92dcc20d1859bc4ef9b-355169941.jpg");
imshow(x)
x_r=x;
x_r(:,:,2:3)=0;
figure;imshow(x_r)
x_g=x;
x_g(:,:,1)=0;
x_g(:,:,3)=0;
figure;imshow(x_g)
x_b=x;
x_b(:,:,1:2)=0;
figure;imshow(x_b)