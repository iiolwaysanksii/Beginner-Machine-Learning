X = load("q5a.txt");
X(:,2)=[];
Y1 = sin(X);
Y2 = cos(X);

subplot(1,3,1); plot(X,Y1,'r'); hold on; plot(X,Y2,'b');  
xlabel("Matrix Data"); ylabel("Function Value");

subplot(1,3,2); plot(X,Y1,'r');
xlabel("Data"); ylabel("sin function");

subplot(1,3,3); plot(X,Y2,'b');
xlabel('Data'); ylabel('cos function');