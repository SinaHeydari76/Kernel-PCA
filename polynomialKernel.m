function kernelValue = polynomialKernel(x, y, offset, degree)
    % This function calculates the polynomial kernel value between x and y
    % using the given offset and degree.
    
    innerProduct = x' * y;
    kernelValue = (innerProduct + offset) .^ degree;
end