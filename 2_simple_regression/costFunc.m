function J = costFunc(X, y, theta),
  m = length(y); #size of training data
  J = 0;
  
  J = (1 / (2*m) ) * sum(((X * theta)-y).^2)
endfunction
