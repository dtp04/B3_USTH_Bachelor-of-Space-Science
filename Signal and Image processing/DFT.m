%DFT
% Given sequence
x = [1, 2, 3, 4, 5, 6];

% Compute the 6-point Discrete Fourier Transform (DFT)
X = fft(x, 6);
disp(X);