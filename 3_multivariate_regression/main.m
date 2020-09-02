clear;
#Loading Data------------------------------------------------------------

data = load("data13.txt");
X = data(:,1:13);
y = data(:,14);
m = length(y);

#Setting up for Gradient Descent-----------------------------------------
theta = rand(14,1);
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
theta = gradDesc(X,y,alpha,iterations,theta);