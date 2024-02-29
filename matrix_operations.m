A = [1 2; 3 4; 5 6];
B = [1 2 3; 4 5 6];
C = A' + B;
C = B * A;
% C = A + B;
% C = B' * A;

% Define matrix A
A = [16 2 3 13;
     5 11 10 8;
     9 7 6 12;
     4 14 15 1];

% disp('Matrix A:');
% disp(A(:, 1:2));

% disp('Matrix A:');
% disp(A(1:4, 1:2));

% disp('Matrix A:');
% disp(A(:, 0:2));

% disp('Matrix A:');
% disp(A(0:4, 0:2));

v = zeros(10, 1);


function v = manualMatrixVectorMultiplication(A, x)
    % Initialize the result vector v with zeros. Its length should be the same as the number of rows in A.
    v = zeros(size(A, 1), 1);
    % Loop over each element in A and corresponding element in x to perform the multiplication and addition
    for i = 1:10  % Assuming A is a square matrix, otherwise, adjust for non-square matrices.
        for j = 1:10  % Loop over the columns of A and elements of x
            v(i) = v(i) + A(i, j) * x(j);
        end
    end
end

A = rand(10, 10);
x = rand(10, 1);
% disp(manualMatrixVectorMultiplication(A,x));
% disp(isequal(manualMatrixVectorMultiplication(A,x),A * x));
% disp(isequal(manualMatrixVectorMultiplication(A,x),Ax));
% disp(isequal(manualMatrixVectorMultiplication(A,x),A .* x));
% disp(isequal(manualMatrixVectorMultiplication(A,x),sum (A * x)));


% Assuming X is a predefined 7x7 matrix
% X = rand(7, 7);

function [A, B, C, D] = matrixOperations(X)
    % Check if X is a 7x7 matrix
    if size(X, 1) ~= 7 || size(X, 2) ~= 7
        error('Input matrix X must be 7x7.');
    end
    
    % Initialize matrices A, B, C, and D with the same size as X
    A = zeros(size(X));
    B = zeros(size(X));
    C = zeros(size(X));
    D = zeros(size(X));
    
    % Loop over each element in X to perform the specified operations
    for i = 1:7
        for j = 1:7
            A(i, j) = log(X(i, j));  % Logarithm of each element
            B(i, j) = X(i, j) ^ 2;   % Square of each element
            C(i, j) = X(i, j) + 1;   % Add 1 to each element
            D(i, j) = X(i, j) / 4;   % Divide each element by 4
        end
    end
end

X = rand(7, 7);
[A, B, C, D] = matrixOperations(X);

disp(isequal(X+1, C));
disp(isequal(X/4, D));
disp(isequal(X.^ 2, B));
disp(isequal(X ^2, B));


function z = dotProduct(v, w)
    % Check if vectors have the same size
    if length(v) ~= length(w)
        error('Vectors must be of the same length.');
    end
    % Initialize the result
    z = 0;
    % Compute the dot product
    for i = 1:length(v)
        z += v(i) * w(i); % Octave allows '+=' for accumulation
    end
end


v = rand(7, 1);
w = rand(7, 1);

% disp(isequal(dotProduct(v,w),sum (v .* w)));
% disp(isequal(dotProduct(v,w),v' * w));
% disp(isequal(dotProduct(v,w),v * w'));
% disp(isequal(dotProduct(v,w), v .* w));
