%Fast Fourier Transform
clc;
clear;
x = imread('peppers.png');

X = fft2(x,1024,1024);
Y = fftshift(abs(X));
YR      =   Y ; YR(:,:,[2 3]) =0;
YG      =   Y ; YG(:,:,[1 3]) =0;
YB      =   Y ; YB(:,:,[1 2]) =0;
figure ; imshow(YR*0.0001);
figure ; imshow(YG*0.0001);
figure ; imshow(YB*0.0001);

%Grayscale FFT
0