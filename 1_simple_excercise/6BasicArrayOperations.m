X = [4 5 6; 3 6 7; 7 8 9]
Y = [8 9 2; 3 5 3; 4 5 2]

disp("Addition");
X+Y

disp("Difference");
X-Y

disp("Multiplication");
X*Y

disp("First row of matrix X");
X(1,:)

disp("Second row first two elements of X");
X(2,[1:2])

disp("Third Column of matrix Y");
Y(:,3)