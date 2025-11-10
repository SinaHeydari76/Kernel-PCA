function [eigenVectorsSorted, eigenValuesSorted] = sortEigenvaluesAndVectors(A)
    % This function computes the eigenvalues and eigenvectors of matrix A
    % and sorts them in descending order of the eigenvalues.

    [eigenVectors, eigenValues] = eig(A);
    [~, index] = sort(diag(eigenValues), 'descend');
    eigenValuesSorted = eigenValues(index, index);
    eigenVectorsSorted = eigenVectors(:, index);
end