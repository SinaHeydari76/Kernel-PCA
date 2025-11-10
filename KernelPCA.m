function [transformedData, selectedEigenVectors, selectedEigenValues] = KernelPCA(data, percent, kernelType, kernelParams)
    % Construct the kernel matrix based on the specified kernel type
    switch kernelType
        case 'polynomial'
            c = kernelParams(1);
            d = kernelParams(2);
            kernelMatrix = polynomialKernel(data, data, c, d);
        case 'gaussian'
            sigma = kernelParams(1);
            kernelMatrix = computeGaussianKernel(data, sigma);
        otherwise
            error('Unsupported kernel type');
    end

    % Kernel centering
    numSamples = size(data, 2);
    unitMatrix = (1 / numSamples) * ones(numSamples, numSamples);
    centeredKernelMatrix = kernelMatrix - kernelMatrix * unitMatrix - unitMatrix * kernelMatrix + unitMatrix * kernelMatrix * unitMatrix;

    % Eigen decomposition
    [eigenVectors, eigenValues] = sortEigenvaluesAndVectors(centeredKernelMatrix);
    numComponents = findPrincipalComponents(eigenValues, percent);
    selectedEigenVectors = eigenVectors(:, 1:numComponents);
    selectedEigenValues = eigenValues(:, 1:numComponents);

    % Transform data
    transformedData = selectedEigenVectors' * centeredKernelMatrix;
end