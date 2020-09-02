X = load("q5a.txt");

disp("Size of matrix X:"); len = size(X); len

i = input("Input Row number (1-20)");
R = X(i,:);
disp("Row size:"); Rlen = length(R); Rlen

i = input("Input column number (1-2)");
C = X(:,i);
disp("Column size"); Clen = length(C); Clen

%size(X) Returns a row vector with matrix dimensionclear

X = magic(3);
disp("Saving data to file q5b.txt......");
save q5b.txt X;
disp("Done");

%fid = fopen("q5b.txt","w");
%fclose(fid);

%Variables in the current scope:
who
whos