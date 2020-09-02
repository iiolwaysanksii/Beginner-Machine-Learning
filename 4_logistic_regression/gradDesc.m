function theta = gradDesc(X,y,alpha,iterations,theta),
  m = length(y);

  J_history = zeros(iterations, 2);

  for iter = 1:iterations,
    
    error = sigmoid(X*theta) - y;
    theta = theta .- (alpha / m) * (X'*error);
    
    J_history(iter,1) = iter;
    J_history(iter,2) = costFunc(theta,X,y);    
  endfor
  
  figure 2; plot(J_history(:,1), J_history(:,2)); 
endfunction
