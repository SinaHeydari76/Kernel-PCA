function kernelValue = gKernel(x, y, sigma)
    % This function calculates the Gaussian kernel value between x and y
    % using the given sigma.
    
    distance = sum((x - y).^2, 2);
    coefficient = -1 / (2 * (sigma^2));
    kernelValue = exp(distance * coefficient);
end