clear;
#Loading Data------------------------------------------------------------
data = load("admission.csv");
X = data(:,1:4);
y = data(:,5);
m = size(X, 1);
alpha = 0.01;
iterations = 1000;
#Normalize X-------------------------------------------------------------
mu = mean(X);
sigma = std(X);
t = ones(m,1);
X_norm = (X - (t * mu)) ./ (t * sigma);
# Add intercept
X = [ones(m,1),X_norm];
#Setting Parameters-----------------------------------------------------
theta1 = rand(4,5);
theta2 = rand(1,5);
#Cost Function----------------------------------------------------------
J = costFunc(theta1, theta2,X,y);
printf("Initial Cost is: %d \n", J);
fflush(stdout);

#Learning using backward propagation-------------------------------------
for t=1:iterations
  [theta1, theta2] = backward(theta1,theta2,X,y,alpha);
  if mod(t, 100) == 0
    J = costFunc(theta1, theta2,X,y);
    printf("Cost after %d iterations: %f \n", t, J);
    fflush(stdout);
  endif
endfor

J = costFunc(theta1, theta2,X,y);
printf("Final cost: %f \n", J);