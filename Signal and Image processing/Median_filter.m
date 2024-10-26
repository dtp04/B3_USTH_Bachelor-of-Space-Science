% Median filter
h1 = ones(3)/9;

x = imread('peppers.png');
x =rgb2gray(x);

xng = imnoise(x,'gaussian',0,0.1); % gaussian noise
xns = imnoise(x,'salt & pepper', 0.1); %salt and pepper nois

figure ; imshow (xng);
g1 = medfilt2(xng);
figure ; imshow (g1);

figure ; imshow (xns);
g2 = medfilt2(xns);
figure ; imshow (g2);