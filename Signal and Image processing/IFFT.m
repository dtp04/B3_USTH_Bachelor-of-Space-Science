% find example ifft2 in matlab
% Create a 3x3 matrix
X = magic(3);

% Compute the 2-D Fourier transform of the matrix
Y = fft2(X);

% Display the Fourier transformed matrix
disp('Fourier Transform of X:');
disp(Y);

% Compute the inverse Fourier transform
X_reconstructed = ifft2(Y);

% Display the reconstructed matrix
disp('Reconstructed Matrix from IFFT:');
disp(X_reconstructed);