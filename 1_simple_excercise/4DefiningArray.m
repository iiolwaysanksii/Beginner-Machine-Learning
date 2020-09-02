y = [1 2 3];
X = [1 2; 3 4; 5 6];
disp("1-D Array/ vector");
y
disp("2-D Array/ matrix");
X

A = ones(3);
disp("All ones 3x3 matrx");
A

B= zeros(3,2);
disp("All zeros 3x2 matrix");
B

C = diag([1,2,3,4,5,6], 0);
disp("Diagonal matrix");
C

D = 5 * eye(4);
D

E = randi(10,3,2);    %(range,row,column)
disp("3x2 matric with random elements between range 0-10");
E

E = 10*rand(3,2);
E