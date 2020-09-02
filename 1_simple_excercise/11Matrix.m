%% Initialization
clear ; close all; clc

# Initialize two matrices to perform operations
matrix_A = randn(3, 3); # Matrix of Random Numbers
matrix_B = eye(3); # Identity Matrix

# Original Matrices
printf("OriginalMatrix\n")
display(matrix_A);
display(matrix_B);

# Transpose of a Matrix
printf("Transpose of Matrix\n\n")
display(matrix_A');
display(matrix_B');

# Matrix Operations
printf("\nMatrix Operations \n");

## Multiplication
printf("\nMultiplication \n");
matrix_C = matrix_A * matrix_B;
display(matrix_C);

## Addition
printf("Addition \n");
matrix_D = matrix_A + matrix_B;
display(matrix_D);

## Subtraction
printf("Subtraction \n");
matrix_E = matrix_A - matrix_B;
display(matrix_E);
