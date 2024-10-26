clc;
clear;
p=imread('peppers.png');
%imshow(p)

[r,c,s ]= size(p); %row,column,layer
r1=round(r/3);
r2= round(2*r/3 );
c1=round(c/3);
c2= round(2*c/3 );


y=p;
y(r1:r2     , c1:c      ,1)=255;
y(r1:r2     , c1:c      ,2)=0;
y(r1:r2     , c1:c      ,3)=0;

figure;imshow(y)