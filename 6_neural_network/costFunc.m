function J = costFunc(theta1,theta2, X, y)

m = size(X, 1);
         
J = 0;
% Foward propagation

a1 = X; % (400*5)    calculating for second layer
z2 = theta1 * a1'; % (4*5)*(5*400) 
a2 = sigmoid(z2); % (4*400)

a2 = [ones(m,1), a2']; %(400*5)    calculating for output layer
z3 = theta2 * a2';  %(1*5)*(5*400)
a3 = sigmoid(z3);   %(1*400)

J = (1/m) * sum ( sum ( (-y) .* log(a3) - (1-y) .* log(1-a3) ));

end