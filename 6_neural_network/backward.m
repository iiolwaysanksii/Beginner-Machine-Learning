function [theta1, theta2] = backward(theta1,theta2, X, y, alpha)

m = size(X, 1);
 
theta1_grad = zeros(size(theta1));
theta2_grad = zeros(size(theta2));
 
for t=1:m
 
  a1 = X(t,:);  %(1*5)
  a1 = a1'; 
	z2 = theta1 * a1;
	a2 = sigmoid(z2); %4*1
    
  a2 = [1 ; a2]; % adding a bias 5*1
  z3 = theta2 * a2; 
	a3 = sigmoid(z3); %1*1

	delta_3 = a3 - y(t,:);

  z2=[1; z2]; % bias 
  delta_2 = (theta2' * delta_3) .* sigmoidGradient(z2); 

	delta_2 = delta_2(2:end);

	theta2_grad = theta2_grad + delta_3 * a2'; 
	theta1_grad = theta1_grad + delta_2 * a1'; 
endfor

theta2_grad = (1/m) * theta2_grad;
theta1_grad = (1/m) * theta1_grad;

theta1 = theta1 - alpha * theta1_grad;
theta2 = theta2 - alpha * theta2_grad;

endfunction