function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))
%

% lambda_vec = [0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';
% len = length(lambda_vec)
% error = zeros(1, len ^ 2)

% for i = 1:len
%   for j = 1:len
%     C = lambda_vec(i)
%     sigma = lambda_vec(j)
%     model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%     predictions = svmPredict(model, Xval);
%     error((i - 1) * len + j) = mean(double(predictions ~= yval))
%   end
% end

% minIdx = find(error == min(error))
% C = lambda_vec(minIdx / len + 1)
% sigma = lambda_vec(mod(minIdx, len))

C = 0.3
sigma = 0.1


% =========================================================================

end
