clear;
#Loading Data------------------------------------------------------------
data = load("data12.txt");
X = data(:,1);
y = data(:,2);
m = length(y);
#Plotting Data-----------------------------------------------------------
plotData(X,y);

#Setting UP--------------------------------------------------------------
theta = rand(2, 1);
alpha = 0.01;
iterations = 1000;

# Normalize X
mu = mean(X);
sigma = std(X);
t = ones(length(X), 1);
X_norm = (X - (t * mu)) ./ (t * sigma);
# Add intercept
X = [ones(m,1),X_norm];

J = costFunc(X,y,theta);  #intial cost
#Gradient Descent--------------------------------------------------------
theta = gradDesc(X,y,alpha,iterations,theta);
printf("Values learned for theta:"); theta