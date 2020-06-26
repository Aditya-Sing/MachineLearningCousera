function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
x = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
% j = sum 1->m(h - y)^2 h = theta*x;() can do in  vector
for i = 1:m
    h = theta'*X(i,:)';
    x = x + (h - y(i))^2;
end;
j = x/(2*m);
% =========================================================================

end
