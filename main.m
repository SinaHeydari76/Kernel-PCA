% Clear the workspace and close all figures
clear 
close all

% Generate data and plot the original 3D data
[featureX, featureY, featureZ, samples, labels] = generateData();
figure;
subplot(2, 2, 1)
scatter3(featureX, featureY, featureZ, 20, labels)
title('Original Space');
hold on

% Parameters for Polynomial Kernel PCA
polynomialParams1 = [1, 2]; % Example 1: Lower offset and degree
polynomialParams2 = [5, 3]; % Example 2: Higher offset and degree

% Perform Polynomial Kernel PCA and plot the transformed data (Example 1)
data = samples';
percentVarianceRetained = 100;
[transformedDataPoly1, eigenVectorsPoly1, eigenValuesPoly1] = KernelPCA(data, percentVarianceRetained, 'polynomial', polynomialParams1);
subplot(2, 2, 2)
scatter3(transformedDataPoly1(1, :), transformedDataPoly1(2, :), transformedDataPoly1(3, :), 10, labels, 'O')
title('Polynomial Kernel PCA (Offset=1, Degree=2)');

% Perform Polynomial Kernel PCA and plot the transformed data (Example 2)
[transformedDataPoly2, eigenVectorsPoly2, eigenValuesPoly2] = KernelPCA(data, percentVarianceRetained, 'polynomial', polynomialParams2);
subplot(2, 2, 3)
scatter3(transformedDataPoly2(1, :), transformedDataPoly2(2, :), transformedDataPoly2(3, :), 10, labels, 'O')
title('Polynomial Kernel PCA (Offset=5, Degree=3)');

% Parameters for Gaussian Kernel PCA
gaussianParams1 = [5];  % Example 1: Lower sigma
gaussianParams2 = [20]; % Example 2: Higher sigma

% Perform Gaussian Kernel PCA and plot the transformed data (Example 1)
[transformedDataGauss1, eigenVectorsGauss1, eigenValuesGauss1] = KernelPCA(data, percentVarianceRetained, 'gaussian', gaussianParams1);
subplot(2, 2, 4)
scatter3(transformedDataGauss1(1, :), transformedDataGauss1(2, :), transformedDataGauss1(3, :), 10, labels, 'O')
title('Gaussian Kernel PCA (Sigma=5)');

% Perform Gaussian Kernel PCA and plot the transformed data (Example 2)
figure;
[transformedDataGauss2, eigenVectorsGauss2, eigenValuesGauss2] = KernelPCA(data, percentVarianceRetained, 'gaussian', gaussianParams2);
subplot(2, 2, 1)
scatter3(transformedDataGauss2(1, :), transformedDataGauss2(2, :), transformedDataGauss2(3, :), 10, labels, 'O')
title('Gaussian Kernel PCA (Sigma=20)');