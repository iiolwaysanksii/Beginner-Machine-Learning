function J = costFunc(theta, X, y)

m = length(y); 

J = 0;

h_theta = sigmoid(X*theta);
J = (1 / m) * ((-y' * log(h_theta)) - (1 - y)' * log(1 - h_theta));

endfunction
