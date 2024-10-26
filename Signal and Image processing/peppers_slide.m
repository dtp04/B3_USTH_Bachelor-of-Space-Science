clc;
clear;
p=imread('peppers.png');
%imshow(p)

[r,c,s ]= size(p); %row,column,layer
r1=round(r/2);
c1=round(c/2);
% y1 y2
% y3 y4
y1= p(1:r1,1:c1,:);   %figure;imshow(y1) % top left conner of image
y2= p(1:r1,c1+1:c,:); %figure ; imshow(y2) % +1 to not overlap with the 1st picture
y3 =p(r1+1:r,1:c1,:); %figure ; imshow(y3)   % if not +1, the dimension will be different
y4 =p(r1+1:r,c1+1:c,:);%figure; imshow(y4) 
yy =[y1 y2;y3 y4];                    % when combining again, need the same dimension, so +1 important
figure;imshow(yy)