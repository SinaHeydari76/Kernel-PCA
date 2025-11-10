function k = findPrincipalComponents(D, percent)
    % This function determines the number of principal components required
    % to retain the given percentage of total variance.
    
    totalVariance = sum(D, 'all') * (percent / 100);
    cumulativeVariance = 0;
    k = 0;
    
    while cumulativeVariance < totalVariance
        k = k + 1;
        cumulativeVariance = sum(D(:, 1:k), 'all');
    end 
end