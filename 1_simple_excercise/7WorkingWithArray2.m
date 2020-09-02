disp("negative values of a matrix:")
X = -10*rand(3,2)
disp("absolute values of the above matrix :");
Y = abs(X)

disp("Adding a row to matrix:")
Y(4,:) = [5.55,6.66]
disp("Adding a column to matrix:")
Y(:,3) = [1,2,3,4]
disp("Removing 2nd row of matrix:")
Y(2,:) = []
disp("Removing 3rd column of matrix:")
Y(:,3) = []

disp("Maximum and minimum values of matrix Y:");
Max = max(max(Y))
Min = min(min(Y))

disp("Maximun(2nd row) and Minimum(1st row):");
Max = max(Y(2,:))
Min = min(Y(1,:))

disp("Maximum(1st column) and Minimum(2nd column):");
Max = max(Y(:,1))
Min = min(Y(:,2))

disp("Sum of all elements of matrix");
sum(sum(Y))