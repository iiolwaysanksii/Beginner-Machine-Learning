clear;
#Loading Data------------------------------------------------------------

data = load('admission.csv');
X = data(:,1:4);
y = data(:,5);
m = length(y);

#Setting up for Gradient Descent-----------------------------------------
theta = rand(5,1);
alpha = 0.01;
iterations = 1000;

#Normalize X-------------------------------------------------------------
mu = mean(X);
sigma = std(X);
t = ones(m,1);
X_norm = (X - (t * mu)) ./ (t * sigma);
# Add intercept
X = [ones(m,1),X_norm];

#Computation-------------------------------------------------------------
J = costFunc(theta, X, y);
printf("Initial Cost is: "); J

#Gradient Descent--------------------------------------------------------
theta = gradDesc(X,y,alpha,iterations,theta);
J = costFunc(theta, X, y);
printf("Final Cost is: "); J