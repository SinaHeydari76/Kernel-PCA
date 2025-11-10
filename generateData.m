function [featureX, featureY, featureZ, samples, labels] = generateData()
    % This function generates a 3D spherical dataset and assigns labels
    % using a Gaussian function.
    
    % Generate data using sphere
    [featureX, featureY, featureZ] = sphere;
    featureX = reshape(featureX, numel(featureX), 1);
    featureY = reshape(featureY, numel(featureY), 1);
    featureZ = reshape(featureZ, numel(featureZ), 1);
    samples = [featureX, featureY];
    
    % Assign labels using Gaussian function
    labels = zeros(1, size(featureY, 1));
    % Select nearest to center data
    labels(gKernel(samples, [0; 0]', 0.6) > 0.6) = 1;
end