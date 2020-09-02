function [J, grad] = costFunc(theta, X, y, lambda)
m = length(y);

J = 0;

h_theta = sigmoid(X*theta);

J = (1/m) * (-y' * log(h_theta) - (1-y)' * log(1-h_theta)) + (lambda / (2 * m)) * sum(theta(2:end).^2);

end
