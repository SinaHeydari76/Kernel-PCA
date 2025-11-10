function gaussianKernelMatrix = computeGaussianKernel(grid, sigma)
    % This function computes the Gaussian kernel matrix for the input grid.
    
    [~, numColumns] = size(grid);    
    gaussianKernelMatrix = zeros(numColumns, numColumns);        
    
    for j = 1:numColumns             
        baseVector = grid(:, j);
        for k = 1:numColumns                              
            kernelValue = gKernel(baseVector', grid(:, k)', sigma);
            gaussianKernelMatrix(j, k) = kernelValue;
        end
    end
end