# Kernel PCA

An educational MATLAB implementation of **Kernel Principal Component Analysis (KPCA)** for non-linear dimensionality reduction.  
This project demonstrates how kernel functions extend standard PCA by uncovering complex, non-linear structures in data through implicit feature space mapping.


### 📘 Overview
Kernel PCA generalizes classical PCA by applying a kernel function to implicitly project data into a higher-dimensional feature space where linear separation becomes possible.  
This repository provides a clean, step-by-step implementation using both **Gaussian (RBF)** and **polynomial** kernels, along with visualizations and supporting mathematical documentation.


### ⚙️ Features
- Full MATLAB implementation of the KPCA algorithm (`KernelPCA.m`)
- Gaussian and polynomial kernel options
- Functions for kernel computation, eigen-decomposition, and eigenvalue sorting
- Synthetic dataset generation for testing (`generateData.m`)
- Visualization of low-dimensional embeddings
- PDF document explaining theoretical foundations

### 🧩 File Structure

```
Kernel-PCA/
│
├── KernelPCA.m # Main KPCA implementation
├── computeGaussianKernel.m # Gaussian (RBF) kernel function
├── polynomialKernel.m # Polynomial kernel function
├── findPrincipalComponents.m # Eigen-decomposition helper
├── sortEigenvaluesAndVectors.m # Sorting of eigenpairs
├── generateData.m # Synthetic data generator
├── main.m # Demo and visualization script
└── Kernel PCA.pdf # Theoretical documentation
```
### 🧠 Example Applications

- Visualizing complex, non-linear datasets in lower dimensions

- Preprocessing for clustering or classification tasks

- Comparing linear PCA vs. non-linear KPCA

- Educational use in machine learning and data science courses
