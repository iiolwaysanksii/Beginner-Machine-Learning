function theta = gradDesc(X,y,alpha,iterations,theta,lambda),
  m = length(y);

  J_history = zeros(iterations, 2);

  for iter = 1:iterations,
    
    h = sigmoid(X*theta);
    theta = theta .- (alpha/m * (X' * (h - y))) + (lambda / m) * theta;
    
    J_history(iter,1) = iter;
    J_history(iter,2) = costFunc(theta,X,y,lambda);    
  endfor
  
  figure 2; plot(J_history(:,1), J_history(:,2)); 
endfunction
