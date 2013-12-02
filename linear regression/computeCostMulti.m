function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% in the multivariable case we use some fancy linear algebra to rewrite the cost function.
n = size(X,2); % GEt the number of columns in the X feature matrix.
% DOUBLE CHECK CAN ALSO POSSIBLE BE DONE DIRECTLY BY SIMPLYTT TAKING THE TRANSPOSE OF X
for i = 1:n
	X_new(i,:) = transpose(X(:,i));
end 

J =  (1/(2*m)) * (transpose(X*theta - y) * (X*theta - y));

% =========================================================================

end
