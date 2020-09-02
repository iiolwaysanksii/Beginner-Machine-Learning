X = load("q5a.txt");
figure 1; hist(X);
figure 2; plot(X,X);

X(:,2)=[];
Y1 = sin(X);
Y2 = cos(X);

figure 3; plot(X,Y1,'b');  hold on;
figure 3; plot(X,Y2,'r');

xlabel("Matrix Data");
ylabel("Function value");
legend('sin','cos');